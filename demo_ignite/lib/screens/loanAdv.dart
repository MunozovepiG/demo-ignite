import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/screens/homePage.dart';
import 'package:demo_ignite/screens/loanApplicants.dart';
import 'package:demo_ignite/screens/pageView.dart';
import 'package:flutter/material.dart';

import '../DSM/fonts.dart';
import '../DSM/navigation.dart';
import '../DSM/textFormField.dart';
import '../DSM/theme.dart';

class HomeLoanApp extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  HomeLoanApp(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<HomeLoanApp> createState() => _HomeLoanAppState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _HomeLoanAppState extends State<HomeLoanApp> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  _HomeLoanAppState(
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
                heading: 'Home loan application',
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
              Container(
                width: 384,
                height: 300,
                child: Image.asset(
                  'assets/loans/congrat.png',
                  fit: BoxFit.contain,
                ),
              ),
              SS24(),
              Container(
                width: 384,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Body_bold_18(
                        'Just a few more steps and you can have your dream home',
                        Colors.black),
                    SS8(),
                    Body_regular_14(
                        'You can always resume your application, to do so you can manage your application under My Corner.',
                        AppTheme.colors.darkGrey3),
                    SS8(),
                    Body_regular_14(
                        'To complete your home loan application you will need:',
                        AppTheme.colors.darkGrey3),

                    //the number points
                    SS4(),

                    Body_regular_14(
                        '1. Your latest proof of income (payslip not older than three months).',
                        AppTheme.colors.darkGrey3),
                    SS4(),

                    Body_regular_14(
                        '2.Three months bank statement (only if you do not bank with MCB).',
                        AppTheme.colors.darkGrey3),
                    SS4(),

                    Body_regular_14(
                        '3. Signed Offer to Purchase for the property you are planning to buy.',
                        AppTheme.colors.darkGrey3),
                  ],
                ),
              ),
              SS56(),
              UpdateButton(
                buttonText: 'Get started',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ApplicationPersonalDetails(
                          marriage: marriage,
                          name: name,
                          lastName: lastName,
                          maidenName: maidenName,
                          newJob: newJob,
                          application: application)));
                },
              ),
              SS16(),
              InkWell(
                child: Body_bold_18('Learn more', AppTheme.colors.linkBlue),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34),
                        ),
                        child: Container(
                          height: 717,
                          color: Colors
                              .transparent, // Set background color to transparent
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //the image

                                Container(
                                  width: 430,
                                  color: Colors.black,
                                  height: 256,
                                  child: Image(
                                      image:
                                          AssetImage('assets/loans/ads.png')),
                                ),
                                SS24(),
                                Container(
                                  width: 384,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Body_bold_18('What we have to offer:',
                                          Colors.black),
                                      SS16(),
                                      Body_regular_14(
                                          '* A competitive rate throughout the year.',
                                          Colors.black),
                                      SS8(),
                                      Body_regular_14(
                                          '* A repayment period of up to 30 year.',
                                          Colors.black),
                                      SS8(),
                                      Body_regular_14('* Up to 100% financing.',
                                          Colors.black),
                                      SS8(),
                                      Body_regular_14(
                                          '* Loan amount as from Rs200,000.',
                                          Colors.black),
                                      SS8(),
                                      Body_regular_14(
                                          '* Moratorium period until your loan is fully disbursed.',
                                          Colors.black),
                                      SS8(),
                                      Body_regular_14(
                                          '* Moratorium period until your loan is fully disbursed.',
                                          Colors.black)
                                    ],
                                  ),
                                ),

                                SS56(),

                                UpdateButton(
                                  buttonText: 'Get started',
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ApplicationPersonalDetails(
                                                    marriage: marriage,
                                                    name: name,
                                                    lastName: lastName,
                                                    maidenName: maidenName,
                                                    newJob: newJob,
                                                    application: application)));
                                  },
                                ),
                                SS8(),
//close
                                InkWell(
                                  child: Body_bold_18(
                                      'Close', AppTheme.colors.linkBlue),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),

//
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
