import 'package:doctor_app/ui/screens/home.dart';
import 'package:doctor_app/ui/screens/authentication/sign_up_screen.dart';
import 'package:doctor_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../constants.dart';
import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  // It's time to validate the text field
  final _formKey = GlobalKey<FormState>();

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg", height: double.infinity,
            width: double.infinity,
            // Now it takes 100% of our height
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(50),
                  Text(
                    "Sign In",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        ),
                        child: const Text(
                          "Sign Up!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  SignInForm(formKey: _formKey),
                  const SizedBox(height: defaultPadding * 2),
                  CustomButton(
                      label: "Sign In",
                      color: primaryColor,
                      width: 300,
                      height: 55,
                      onPressed: () {
                        Navigator.popAndPushNamed(context, HomeScreen.id);
                      },
                      radius: 10,
                      textColor: textColor)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
