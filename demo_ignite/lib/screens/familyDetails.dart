import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/screens/homePage.dart';
import 'package:demo_ignite/screens/pageView.dart';
import 'package:demo_ignite/screens/profile.dart';
import 'package:flutter/material.dart';

import '../DSM/fonts.dart';
import '../DSM/navigation.dart';
import '../DSM/textFormField.dart';
import '../DSM/theme.dart';

class FamilyDetails extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  FamilyDetails(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<FamilyDetails> createState() => _FamilyDetailsState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _FamilyDetailsState extends State<FamilyDetails> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  _FamilyDetailsState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  String relationship = 'Single';
  TextEditingController _incomeController = TextEditingController(text: '0');
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
                heading: 'Family details',
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

              //job title

              Container(
                width: 384,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Body_regular_12('Maritial status', Colors.black),
                      ],
                    ),
                    SS8(),
                    Container(
                      width: 384,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                        value: marriage,
                        items: [
                          "Single",
                          "Married",
                          "Other",
                        ]
                            .map(
                              (title) => DropdownMenuItem<String>(
                                value: title,
                                child: Text(title),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            marriage = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SS24(),
              Column(
                children: [
                  SS24(),
                  MyCustomTextField(
                    obsecureText: false,
                    controller: _incomeController,
                    labelText: 'Number of dependents',
                    onChanged: (value4) {},
                  ),
                ],
              ),

              SS72(),

              UpdateButton(
                buttonText: 'Update',
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
