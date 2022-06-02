import 'package:doctor_app/constants.dart';
import 'package:doctor_app/text_style.dart';
import 'package:doctor_app/ui/screens/authentication/sign_in_screen.dart';
import 'package:doctor_app/ui/screens/profile/settings.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8.0, top: 50.0),
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: const BoxDecoration(
            color: primaryColor1,
            image: DecorationImage(
                image: AssetImage("assets/images/blue_bg.jpg"), fit: BoxFit.fill),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/user_pic.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Todd Nelson",
                      style: headerTextStyle.copyWith(fontSize: headline2),
                    ),
                    Text(
                      "tello_nii@outlook.com",
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                      softWrap: true,
                      style: primaryTextStyle.copyWith(color: headerTextColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
                children: [
                  Card(
                    child: ListTile(
                      onTap: () async {
                        // await _firebaseAuth.signOut().then(
                        //       (value) =>
                        Navigator.popAndPushNamed(context, SignInScreen.id);
                        // );
                      },
                      leading: const Icon(
                        Icons.logout,
                      ),
                      title: const Text("Sign Out"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, Settings.id);
                      },
                      leading: const Icon(Icons.settings),
                      title: const Text("Settings"),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                child: Text(
                  "General",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              Column(
                children: const [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.language_sharp),
                      title: Text("Language"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.info_outlined),
                      title: Text("About"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.rule_rounded),
                      title: Text("Terms of Service"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: Text("Privacy Policy"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.support),
                      title: Text("Support"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
