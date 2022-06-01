import 'package:doctor_app/constants.dart';
import 'package:doctor_app/text_style.dart';
import 'package:doctor_app/ui/screens/authentication/components/sign_up_form.dart';
import 'package:doctor_app/ui/screens/authentication/sign_in_screen.dart';
import 'package:doctor_app/ui/screens/navigation/main_navigator.dart';
import 'package:doctor_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = "sign up screen route";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Gap(60),
                  Text(
                    "Create Account",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          style: primaryTextStyle,
                          children: [
                        TextSpan(
                            text: " Sign In!",
                            style: primaryTextStyle.copyWith(color: primaryColor1))
                      ])),
                  const SizedBox(height: defaultPadding * 2),
                  SignUpForm(formKey: _formKey),
                  const SizedBox(height: defaultPadding * 2),
                  CustomButton(
                    label: "Sign Up",
                    color: primaryColor,
                    width: 500,
                    height: 55,
                    onPressed: () {
                      Navigator.popAndPushNamed(context, MainNavigation.id);
                    },
                    radius: 10,
                    textColor: primaryColor2,
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
