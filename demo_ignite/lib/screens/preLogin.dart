import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/navigation.dart';
import 'package:demo_ignite/DSM/preLoginAds.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/blank.dart';
import 'package:demo_ignite/screens/homePage.dart';
import 'package:demo_ignite/screens/login.dart';
import 'package:demo_ignite/screens/myHub.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreLogin extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  PreLogin(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<PreLogin> createState() => _PreLoginState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _PreLoginState extends State<PreLogin> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  _PreLoginState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  bool navigation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: AppTheme.colors.greyBackground,
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 1.0,
                child: Column(
                  children: [
                    // Your content here...
                    Column(
                      children: [
                        PlainHeader(),
                        SS24(),
                        Container(
                          width: 384,
                          child: Image(
                              image: AssetImage('assets/alerts/fakeNews.png')),
                        ),
                        SS24(),
                        PreLoginAd(
                          buttonText: 'Apply',
                          onPressed: () {
                            setState(() {
                              navigation = true;
                            });
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login(
                                    name: name,
                                    lastName: lastName,
                                    maidenName: maidenName,
                                    newJob: newJob,
                                    application: application,
                                    marriage: marriage,
                                    navigation: navigation)));
                          },
                          image: 'image',
                          title: 'Your dream home is attainable',
                          descrip:
                              'Did you know at MCB we offer home loans at a fixed rate of 4.50& for the first 2 years.',
                        ),
                        SS24(),
                        Container(
                          width: 384,
                          child: Image(
                              image:
                                  AssetImage('assets/alerts/branchClosed.png')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              child: Container(
                width: 430,
                height: 73,
                decoration: BoxDecoration(color: Color(0xFFC43543)),
                child: Center(child: Heading_2('Login', Colors.white)),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Login(
                        name: name,
                        lastName: lastName,
                        maidenName: maidenName,
                        newJob: newJob,
                        application: application,
                        marriage: marriage,
                        navigation: navigation)));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
