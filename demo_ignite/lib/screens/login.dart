import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/navigation.dart';
import 'package:demo_ignite/DSM/preLoginAds.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/blank.dart';
import 'package:demo_ignite/screens/homePage.dart';
import 'package:demo_ignite/screens/loanAdv.dart';
import 'package:demo_ignite/screens/myHub.dart';
import 'package:demo_ignite/screens/pageView.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DSM/textFormField.dart';

class Login extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;
  bool navigation;

  Login(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage,
      required this.navigation});

  @override
  State<Login> createState() => _LoginState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage,
      navigation: navigation);
}

class _LoginState extends State<Login> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;
  bool navigation;

  _LoginState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage,
      required this.navigation});

  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PlainHeader(),
            SS24(),
            MyCustomTextField(
              obsecureText: false,
              controller: _nameController,
              labelText: 'User name',
              onChanged: (value4) {},
            ),
            SS36(),
            MyCustomTextField(
              obsecureText: true,
              controller: _passwordController,
              labelText: 'Password',
              onChanged: (value4) {},
            ),
            SS8(),
            Container(
              width: 382,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Body_bold_18('Forgot password', AppTheme.colors.linkBlue),
                ],
              ),
            ),
            SS36(),
            // Text('$navigation'),
            UpdateButton(
                buttonText: "Login",
                onPressed: () {
                  if (navigation == true) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeLoanApp(
                            name: name,
                            lastName: lastName,
                            maidenName: maidenName,
                            newJob: newJob,
                            application: application,
                            marriage: marriage)));
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DefaultPage(
                            name: name,
                            lastName: lastName,
                            maidenName: maidenName,
                            newJob: newJob,
                            application: application,
                            marriage: marriage)));
                  }
                }),
            SS36(),
            Container(
                width: 382,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 155,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Body_bold_18('OR', AppTheme.colors.darkGrey3),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 155,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            SS56(),
            Container(
              width: 170,
              height: 170,
              child: Image(image: AssetImage('assets/homePage/biometric.png')),
            ),
            SS64(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
