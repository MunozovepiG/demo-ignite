import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/blank.dart';
import 'package:demo_ignite/screens/homePage.dart';
import 'package:demo_ignite/screens/myHub.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultPage extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  DefaultPage(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<DefaultPage> createState() => _DefaultPageState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _DefaultPageState extends State<DefaultPage> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  _DefaultPageState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _selectedIndex == 0
              ? HomePage(
                  marriage: marriage,
                  application: application,
                  name: name,
                  lastName: lastName,
                  maidenName: maidenName,
                  newJob: newJob)
              : _selectedIndex == 1
                  ? MyHub(
                      marriage: marriage,
                      application: application,
                      name: name,
                      lastName: lastName,
                      maidenName: maidenName,
                      newJob: newJob)
                  : Blank(),
        ),
        bottomNavigationBar: Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    //home button

                    GestureDetector(
                        onTap: () => _onItemTapped(0),
                        child: Container(
                          width: 72,
                          height: 56,
                          child: Column(
                            children: [
                              SS4(),
                              Container(
                                width:
                                    21, // Adjust the width and height as needed
                                height: 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: _selectedIndex == 0
                                        ? AssetImage(
                                            'assets/homePage/homeActive.png')
                                        : AssetImage(
                                            'assets/homePage/homeInactive.png'),
                                  ),
                                  shape: BoxShape.circle,
                                  // Replace with your selected image path
                                ),
                              ),
                              SS4(),
                              Body_regular_8(
                                  'Home',
                                  _selectedIndex == 0
                                      ? AppTheme.colors.primaryRed
                                      : Colors.black)
                            ],
                          ),
                        )
                        // Use an icon for unselected state
                        ),
                  ],
                ),

                //my hub

                Column(
                  children: [
                    //home button

                    GestureDetector(
                        onTap: () => _onItemTapped(1),
                        child: Container(
                          width: 72,
                          height: 56,
                          child: Column(
                            children: [
                              SS4(),
                              Container(
                                width:
                                    21, // Adjust the width and height as needed
                                height: 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: _selectedIndex == 1
                                        ? AssetImage(
                                            'assets/homePage/hubActive.png')
                                        : AssetImage(
                                            'assets/homePage/hubInActiveButton.png'),
                                  ),
                                  shape: BoxShape.circle,
                                  // Replace with your selected image path
                                ),
                              ),
                              SS4(),
                              Body_regular_8(
                                  "Mo'Kwin",
                                  _selectedIndex == 1
                                      ? AppTheme.colors.primaryRed
                                      : Colors.black)
                            ],
                          ),
                        )
                        // Use an icon for unselected state
                        ),
                  ],
                ),

//transfers

                Column(
                  children: [
                    //home button

                    GestureDetector(
                        onTap: () => _onItemTapped(0),
                        child: Container(
                          width: 72,
                          height: 56,
                          child: Column(
                            children: [
                              SS4(),
                              Container(
                                width:
                                    21, // Adjust the width and height as needed
                                height: 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/homePage/transfers.png'),
                                  ),
                                  shape: BoxShape.circle,
                                  // Replace with your selected image path
                                ),
                              ),
                              SS4(),
                              Body_regular_8("Transfers", Colors.black)
                            ],
                          ),
                        )
                        // Use an icon for unselected state
                        ),
                  ],
                ),

//cards

                Column(
                  children: [
                    //home button

                    GestureDetector(
                        onTap: () => _onItemTapped(0),
                        child: Container(
                          width: 72,
                          height: 56,
                          child: Column(
                            children: [
                              SS4(),
                              Container(
                                width:
                                    21, // Adjust the width and height as needed
                                height: 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/homePage/cards.png'),
                                  ),
                                  shape: BoxShape.circle,
                                  // Replace with your selected image path
                                ),
                              ),
                              SS4(),
                              Body_regular_8("Cards", Colors.black)
                            ],
                          ),
                        )
                        // Use an icon for unselected state
                        ),
                  ],
                ),

                //more

                //my hub

                Column(
                  children: [
                    //home button

                    GestureDetector(
                        onTap: () => _onItemTapped(0),
                        child: Container(
                          width: 72,
                          height: 56,
                          child: Column(
                            children: [
                              SS4(),
                              Container(
                                width:
                                    21, // Adjust the width and height as needed
                                height: 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/homePage/moreInactive.png'),
                                  ),
                                  shape: BoxShape.circle,
                                  // Replace with your selected image path
                                ),
                              ),
                              SS4(),
                              Body_regular_8("More", Colors.black)
                            ],
                          ),
                        )
                        // Use an icon for unselected state
                        ),
                  ],
                ),
              ]),
        ));
  }
}
