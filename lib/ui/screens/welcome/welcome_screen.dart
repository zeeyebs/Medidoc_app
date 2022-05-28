import 'package:doctor_app/constants.dart';
import 'package:doctor_app/ui/screens/authentication/sign_in_screen.dart';
import 'package:doctor_app/ui/screens/authentication/sign_up_screen.dart';
import 'package:doctor_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/icons/splash_bg.svg",
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  const Spacer(
                    flex: 7,
                  ),
                  SvgPicture.asset(
                    "assets/icons/logo-2.svg",
                  ),
                  const Spacer(flex: 5),
                  CustomButton(
                      label: "Sign In",
                      color: const Color(0xFF6CD8D1),
                      width: 500,
                      height: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, SignInScreen.id);
                      },
                      radius: 10,
                      textColor: primaryColor2),
                  const SizedBox(height: defaultPadding),
                  CustomButton(
                      label: "Sign Up",
                      color: Colors.transparent,
                      width: 500,
                      height: 50,
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      radius: 10,
                      textColor: primaryColor2),
                  const SizedBox(height: defaultPadding),
                  const Spacer(
                    flex: 1,
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
