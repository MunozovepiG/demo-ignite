import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/cards.dart';
import 'package:demo_ignite/DSM/fonts.dart';
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Body_bold_14(
                                    'Other accounts', AppTheme.colors.darkGrey3)
                              ],
                            ),
                            SS16(),
                            Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, right: 16, top: 24),
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Body_bold_18('Default account balance',
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
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 20,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ])),
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
                            //beyond numbers
                            Container(
                              height: 112,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Body_bold_14('#SuccessBeyondNumbers',
                                            AppTheme.colors.darkGrey3),
                                      ],
                                    ),
                                    (application)
                                        ? Container(
                                            width: 384,
                                            height: 80,
                                            color: AppTheme.colors.orange,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0, right: 12.0),
                                              child: Row(children: [
                                                Container(
                                                  width: 71.3,
                                                  height: 58,
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/homePage/homeIcon.png')),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: 268,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Body_bold_14(
                                                            "A few more steps to your dream home",
                                                            Colors.white),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Body_regular_12(
                                                            'Complete your application, to take the right steps forward to your dream house.',
                                                            Colors.white),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            InkWell(
                                                              child: Body_bold_10(
                                                                  'Resume',
                                                                  AppTheme
                                                                      .colors
                                                                      .linkBlue),
                                                              onTap: () {
                                                                Navigator.of(context).push(MaterialPageRoute(
                                                                    builder: (context) => LoanDetails(
                                                                        name:
                                                                            name,
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
                                                            )
                                                          ],
                                                        )
                                                      ]),
                                                )
                                              ]),
                                            ),
                                          )
                                        : (newJob)
                                            ? InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyHub(
                                                                  marriage:
                                                                      marriage,
                                                                  application:
                                                                      application,
                                                                  name: name,
                                                                  lastName:
                                                                      lastName,
                                                                  maidenName:
                                                                      maidenName,
                                                                  newJob:
                                                                      newJob)));
                                                },
                                                child: Container(
                                                  width: 384,
                                                  height: 80,
                                                  child: Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16.0,
                                                            right: 16),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 66.31,
                                                          height: 44,
                                                          child: Image(
                                                              image: AssetImage(
                                                                  'assets/homePage/joy.png')),
                                                        ),
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 260,
                                                          height: 60,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Body_bold_16(
                                                                  'Congratulations on the new job',
                                                                  Colors.white),
                                                              SS4(),
                                                              Body_regular_12(
                                                                  "We want to be with you every step of the way. Learn more about MB's business solutions.",
                                                                  Colors.white)
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )),
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment(1.00, 0.00),
                                                      end: Alignment(-1, 0),
                                                      colors: [
                                                        Color(0xFF8D202F),
                                                        Color(0xFFDC143D),
                                                        Color(0xFFF93F69)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              MyHub(
                                                                  marriage:
                                                                      marriage,
                                                                  application:
                                                                      application,
                                                                  name: name,
                                                                  lastName:
                                                                      lastName,
                                                                  maidenName:
                                                                      maidenName,
                                                                  newJob:
                                                                      newJob)));
                                                },
                                                child: Container(
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/homePage/diversityBkg.png"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  child: Center(
                                                      child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16.0,
                                                            right: 16),
                                                    child: Row(
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Body_bold_16(
                                                                'Become an agent of change',
                                                                Colors.white),
                                                            SS4(),
                                                            Container(
                                                              width: 324,
                                                              child: Body_regular_12(
                                                                  "With every MCB debit card payment, we'll donate 10 cents to protect biodiversity.",
                                                                  Colors.white),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                ),
                                              ),
                                  ]),
                            )
                          ]),
                        ),

                        SS24(),
                        //product selection

                        Row(
                          children: [
                            Body_bold_16('Hand picked just for you',
                                AppTheme.colors.darkGrey3),
                          ],
                        ),

                        SS4(),
                        Body_bold_18('Get the perfect solution for your needs',
                            Colors.black),
                        SS16(),
                        (application)
                            ? ProductCard(
                                onPressed: () {},
                                productHeading: 'An offer you cannot refuse',
                                productDescription:
                                    'Get a discount on your home loan, with our Partner discounts.',
                                image: 'assets/homePage/homeDiscount.png',
                              )
                            : ProductCard(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomeLoanApp(
                                            application: application,
                                            name: name,
                                            newJob: newJob,
                                            lastName: lastName,
                                            maidenName: maidenName,
                                            marriage: marriage,
                                          )));
                                },
                                productHeading: 'Get your dream home today',
                                productDescription:
                                    'You pre-qualify for a MUR 4,500,000.00 home loan.',
                                image: 'assets/homePage/dreamHouse.png',
                              )
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
