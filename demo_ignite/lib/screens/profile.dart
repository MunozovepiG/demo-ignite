import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/navigation.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/screens/familyDetails.dart';
import 'package:demo_ignite/screens/homePage.dart';
import 'package:demo_ignite/screens/pageView.dart';
import 'package:demo_ignite/screens/workDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../DSM/theme.dart';

class MyProfile extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  MyProfile(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<MyProfile> createState() => _MyProfileState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _MyProfileState extends State<MyProfile> {
  String name;
  String lastName;
  String maidenName;
  bool visable = false;
  bool newJob;
  bool application;
  String marriage;

  _MyProfileState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          color: AppTheme.colors.greyBackground,
          child: Column(
            children: [
              MobileHeader(
                heading: 'My Profile',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DefaultPage(
                          marriage: marriage,
                          name: name,
                          lastName: lastName,
                          maidenName: maidenName,
                          newJob: newJob,
                          application: application)));
                },
              ),
              SS24(),
              Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/profileImages/pic.png"),
                      fit: BoxFit.fill,
                    ),
                  )),
              SS16(),
              Body_bold_18('$name $maidenName $lastName', Colors.black),
              SS4(),
              Body_bold_14('Personal bank account', AppTheme.colors.darkGrey3),
              SS36(),
              //the content column
              Container(
                width: 384,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Body_bold_14('Your profile was last updated 10-10-2023',
                          Colors.black),

                      SS24(),
//the profile motive
                      Container(
                          width: 384,
                          height: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10),
                            child: Row(
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/profileImages/chart.png')),
                                ),
                                SizedBox(
                                  width: 23,
                                ),
                                Container(
                                  width: 285,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Body_bold_14(
                                            'The better we know you the sweeter the deals',
                                            Colors.black),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Body_bold_10(
                                            'Your profile is 92% complete. Update all your details to get matched with the best products.',
                                            AppTheme.colors.darkGrey3)
                                      ]),
                                )
                              ],
                            ),
                          )),

                      //manage your profile

                      SS24(),
                      Body_bold_18('Manage your profile', Colors.black),
                      SS4(),
                      Body_bold_14(
                          'Here you can maintain your personal info safely and securely.',
                          AppTheme.colors.darkGrey3),

                      SS16(),

                      //buttons - row 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProfileButton(
                                    label: 'Personal',
                                    image: 'assets/profileImages/personal.png',
                                    onPressed: () {}),
                                ProfileButton(
                                    label: 'Work',
                                    image: 'assets/profileImages/work.png',
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (contex) => WorkDetails(
                                                  marriage: marriage,
                                                  name: name,
                                                  lastName: lastName,
                                                  maidenName: maidenName,
                                                  newJob: newJob,
                                                  application: application)));
                                    }),
                                ProfileButton(
                                    label: 'Finances',
                                    image: 'assets/profileImages/finance.png',
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SS16(),

                      //buttons - row 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProfileButton(
                                    label: 'Contact',
                                    image: 'assets/profileImages/contac.png',
                                    onPressed: () {}),
                                ProfileButton(
                                    label: 'Family',
                                    image: 'assets/profileImages/family.png',
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FamilyDetails(
                                                      marriage: marriage,
                                                      name: name,
                                                      lastName: lastName,
                                                      maidenName: maidenName,
                                                      newJob: newJob,
                                                      application:
                                                          application)));
                                    }),
                                ProfileButton(
                                    label: 'Preferences',
                                    image: 'assets/profileImages/pref.png',
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SS16(),

                      //buttons - row 3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ProfileButton(
                                    label: 'Documents',
                                    image: 'assets/profileImages/document.png',
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
