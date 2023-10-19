import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/navigation.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/pageView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../DSM/cards.dart';
import 'loanAdv.dart';

class MyHub extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  MyHub(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<MyHub> createState() => _MyHubState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _MyHubState extends State<MyHub> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  _MyHubState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  bool jFY = true;
  bool manage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        color: AppTheme.colors.greyBackground,
        child: SingleChildScrollView(
          child: Column(children: [
            MobileHeader(
                heading: "Mo'Kwin",
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DefaultPage(
                          marriage: marriage,
                          name: name,
                          lastName: lastName,
                          maidenName: maidenName,
                          newJob: newJob,
                          application: application)));
                }),
            SS24(),
            Container(
              width: 384,
              child: Column(
                children: [
                  Body_bold_18(
                      'Why go in branch when you can do it all digitally?',
                      Colors.black),
                  SS8(),
                  Body_bold_14(
                      'Access more than just banking with your personalized MCB banking hub.',
                      AppTheme.colors.darkGrey3),
                  SS24(),

                  //success beyond numbers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Body_bold_14(
                          '#SuccessBeyondNumbers', AppTheme.colors.darkGrey3),
                    ],
                  ),
                  SS16(),
                  Container(
                    width: 384,
                    height: 102,
                    decoration: BoxDecoration(color: Color(0xFFF7738E)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/cornerPage/gift.png')),
                            Container(
                              width: 260,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Body_bold_16(
                                      'Munozovepi, you do not want to misss out',
                                      Colors.white),
                                  SS4(),
                                  Container(
                                    width: 221,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: Center(
                                      child: Body_bold_14(
                                          'Start getting rewards today',
                                          Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SS24(),
                  //the message
                  (application)
                      ? Column(
                          children: [
                            Body_bold_14(
                                'Hey Munozovepi, did you know once your application has been submitted we will give you the outcome in 48 hours.',
                                Colors.black),
                            SS16(),
                            Container(
                              width: 380,
                              height: 275,
                              decoration: BoxDecoration(
                                //color: Color(0xFF9351E1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                  image: AssetImage(
                                      "assets/cornerPage/imagine.png")),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Body_bold_14(
                                'Hey Munozovepi, did you know  80% of entrepreneurs in Mauritius connect on MCB Punch?',
                                Colors.black),
                            SS16(),
                            Container(
                              width: 380,
                              height: 275,
                              decoration: BoxDecoration(
                                //color: Color(0xFF9351E1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image(
                                  image: AssetImage(
                                      "assets/cornerPage/promo.png")),
                            ),
                          ],
                        ),

                  //manage of products
                  Container(
                    width: 384,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Body_bold_16('Meet all of your banking needs with ease',
                            AppTheme.colors.darkGrey3),

                        SS16(),

                        //the chips

                        Container(
                          width: 356,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ChipButton(
                                label: 'Just for you',
                                active: (jFY) ? true : false,
                                onPressed: () {
                                  setState(() {
                                    jFY = !jFY;
                                    manage = !manage;
                                  });
                                },
                              ),
                              ChipButton(
                                label: 'Explore',
                                onPressed: () {},
                                active: false,
                              ),
                              ChipButton(
                                label: (application) ? 'Manage (1)' : 'Manage',
                                onPressed: () {
                                  setState(() {
                                    manage = !manage;
                                    jFY = !jFY;
                                  });
                                },
                                active: (manage) ? true : false,
                              ),
                            ],
                          ),
                        ),

                        SS16(),

                        if (jFY)
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
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
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
                                ),
                        if (manage && application)
                          Container(
                            width: 384,
                            height: 88,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9F9F9),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 20,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 14.0, right: 14),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ProfileImage(),
                                  Container(
                                    width: 220,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 8,
                                                height: 8,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFFF930F),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Body_regular_12('In progress',
                                                  AppTheme.colors.darkGrey3)
                                            ],
                                          ),
                                          SS8(),
                                          Body_bold_16('Home loan application',
                                              Colors.black)
                                        ]),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios))
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      )),
      backgroundColor: Colors.white,
    );
  }
}
