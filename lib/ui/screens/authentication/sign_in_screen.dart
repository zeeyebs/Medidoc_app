import 'package:doctor_app/text_style.dart';
import 'package:doctor_app/ui/screens/authentication/sign_up_screen.dart';
import 'package:doctor_app/ui/screens/navigation/main_navigator.dart';
import 'package:doctor_app/ui/widgets/custom_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../constants.dart';
import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  static const String id = "sign in screen route";
  final _formKey = GlobalKey<FormState>();

  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics:
                  const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account?",
                      style: primaryTextStyle,
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popAndPushNamed(context, SignUpScreen.id);
                              },
                            text: " Sign Up!",
                            style: primaryTextStyle.copyWith(color: primaryColor1))
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  SignInForm(formKey: _formKey),
                  const SizedBox(height: defaultPadding * 2),
                  CustomButton(
                    label: "Sign In",
                    color: primaryColor,
                    width: 500,
                    height: 55,
                    onPressed: () {
                      Navigator.popAndPushNamed(context, MainNavigation.id);
                    },
                    radius: 10,
                    textColor: textColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
