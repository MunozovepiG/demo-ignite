import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/cards.dart';
import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/insights.dart';
import 'package:demo_ignite/DSM/navigation.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/loanAdv.dart';
import 'package:demo_ignite/screens/loanApplicants.dart';
import 'package:demo_ignite/screens/loanDetails.dart';
import 'package:demo_ignite/screens/myHub.dart';
import 'package:demo_ignite/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  HomePage(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});
  @override
  State<HomePage> createState() => _HomePageState(
      name: name,
      lastName: lastName,
      maidenName: maidenName,
      newJob: newJob,
      application: application,
      marriage: marriage);
}

class _HomePageState extends State<HomePage> {
  String name;
  String lastName;
  String maidenName;
  bool visable = false;
  bool newJob;
  bool application;
  String marriage;

  _HomePageState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  bool insights = true;
  bool accounts = false;
  //updated
  bool expired = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          color: AppTheme.colors.greyBackground,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyProfile(
                            marriage: marriage,
                            application: application,
                            name: name,
                            lastName: lastName,
                            maidenName: maidenName,
                            newJob: newJob)));
                  },
                ),

                //content
                Padding(
                  padding: EdgeInsets.only(left: 24.0, right: 24),
                  child: Container(
                    width: 384,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SS4(),
                        Heading_1('Good afternoon,', Colors.black),
                        SS4(),
                        Heading_2(name, Colors.black),
                        SS16(),
                        //the accounts
                        Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          child: Column(children: [
                            SS24(),
                            //the quick links
                            Container(
                              height: 94,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  QuickLink(
                                    image: 'assets/homePage/pay.png',
                                    label: 'Pay',
                                  ),
                                  QuickLink(
                                    image: 'assets/homePage/scan.png',
                                    label: 'Scan to pay',
                                  ),
                                  QuickLink(
                                    image: 'assets/homePage/mobile.png',
                                    label: 'Scan to mobile',
                                  ),
                                  QuickLink(
                                    image: 'assets/homePage/refill.png',
                                    label: 'Refill',
                                  ),
                                  EmptyQuickLink(
                                    image: 'assets/homePage/add.png',
                                    label: 'Add link',
                                  )
                                ],
                              ),
                            ),
                            SS24(),

                            //the insights and accounts
                            Container(
                              width: 384,
                              child: Row(children: [
                                //the activated insights
                                (insights == true)
                                    ? InkWell(
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 191.5,
                                                  height: 64,
                                                  color: Colors.white,
                                                  child: Center(
                                                    child: Body_bold_16(
                                                        'Insights',
                                                        Colors.black),
                                                  ),
                                                ),
                                                Container(
                                                  width: 191.5,
                                                  height: 4,
                                                  color: AppTheme
                                                      .colors.primaryRed,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          setState(() {
                                            accounts = !accounts;
                                            insights = !insights;
                                          });
                                        },
                                      )
                                    : InkWell(
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 189,
                                                  height: 64,
                                                  color: Color(0xFFF1F1F1),
                                                  child: Center(
                                                    child: Body_bold_16(
                                                        'Insights',
                                                        Colors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        onTap: () {
                                          setState(() {
                                            accounts = !accounts;
                                            insights = !insights;
                                          });
                                        },
                                      ),

                                //inactive state
                                (accounts)
                                    ? InkWell(
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 191.5,
                                                  height: 64,
                                                  color: Colors.white,
                                                  child: Center(
                                                    child: Body_bold_16(
                                                        'Accounts',
                                                        Colors.black),
                                                  ),
                                                ),
                                                Container(
                                                  width: 191.5,
                                                  height: 4,
                                                  color: AppTheme
                                                      .colors.primaryRed,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          setState(() {
                                            accounts = !accounts;
                                            insights = !insights;
                                          });
                                        },
                                      )
                                    : InkWell(
                                        child: Column(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 189,
                                                  height: 64,
                                                  color: Color(0xFFF1F1F1),
                                                  child: Center(
                                                    child: Body_bold_16(
                                                        'Accounts',
                                                        Colors.black),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          setState(() {
                                            accounts = !accounts;
                                            insights = !insights;
                                          });
                                        },
                                      ),
                              ]),
                            ),

                            ///insights content
                            (insights)
                                ? Column(
                                    children: [
                                      Column(
                                        children: [
                                          SS16(),
                                          (expired)
                                              ? ResumeCard(
                                                  date: 'Heads up',
                                                  message:
                                                      'Your passport is going to expire in 2 days. ',
                                                  image:
                                                      'assets/homePage/note.png',
                                                  color: AppTheme
                                                      .colors.primaryRed,
                                                  onPressed: () {
                                                    //need to link to the personal Details
                                                  },
                                                  buttonText: 'Update',
                                                )
                                              : SizedBox(
                                                  width: 0,
                                                )
                                        ],
                                      ),
                                      (application)
                                          ? Column(
                                              children: [
                                                SS16(),
                                                ResumeCard(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) => LoanDetails(
                                                                  name: name,
                                                                  lastName:
                                                                      lastName,
                                                                  maidenName:
                                                                      maidenName,
                                                                  newJob:
                                                                      newJob,
                                                                  application:
                                                                      application,
                                                                  marriage:
                                                                      marriage)));
                                                    },
                                                    buttonText: 'Resume',
                                                    message:
                                                        'Complete your application to get closer to your dream home.',
                                                    image:
                                                        'assets/homePage/Celebrate.png',
                                                    date:
                                                        'So close to your dream home',
                                                    color:
                                                        AppTheme.colors.orange),
                                              ],
                                            )
                                          : Column(
                                              children: [
                                                SS16(),
                                                TodayCard(
                                                    message:
                                                        'Congratulations you have banking with MCB for 2 years',
                                                    image:
                                                        'assets/homePage/Celebrate.png',
                                                    date: 'Today',
                                                    color:
                                                        AppTheme.colors.green),
                                              ],
                                            ),
                                      SS16(),
                                      (application)
                                          ? MarketingCard()
                                          : ProductCard(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            HomeLoanApp(
                                                              application:
                                                                  application,
                                                              name: name,
                                                              newJob: newJob,
                                                              lastName:
                                                                  lastName,
                                                              maidenName:
                                                                  maidenName,
                                                              marriage:
                                                                  marriage,
                                                            )));
                                              },
                                              productHeading:
                                                  'Get your dream home today',
                                              productDescription:
                                                  'You pre-qualify for a MUR 4,500,000.00 home loan.',
                                              image:
                                                  'assets/homePage/dreamHouse.png',
                                            ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      SS24(),
                                      Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0, right: 16, top: 24),
                                            child: Column(children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Body_bold_18(
                                                      'Default account balance',
                                                      Colors.white),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        visable = !visable;
                                                      });
                                                    },
                                                    child: (visable)
                                                        ? Image(
                                                            image: AssetImage(
                                                                'assets/homePage/visable.png'))
                                                        : Image(
                                                            image: AssetImage(
                                                                'assets/homePage/visable_off.png')),
                                                  )
                                                ],
                                              ),
                                              SS4(),
                                              Row(
                                                children: [
                                                  Body_regular_18(
                                                      (visable)
                                                          ? '000001111788900'
                                                          : '***************',
                                                      Colors.white),
                                                ],
                                              ),
                                              SS36(),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Body_bold_18(
                                                      (visable)
                                                          ? 'MUR 1,000,000.00'
                                                          : '************',
                                                      Colors.white),
                                                ],
                                              )
                                            ]),
                                          ),
                                          width: 383,
                                          height: 152,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFF8D202F),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              shadows: [
                                                BoxShadow(
                                                  color: Color(0x19000000),
                                                  blurRadius: 20,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                                )
                                              ])),
                                    ],
                                  )
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}
