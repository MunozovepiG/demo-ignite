import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../DSM/buttons.dart';
import '../DSM/fonts.dart';
import '../DSM/navigation.dart';
import '../DSM/textFormField.dart';
import 'pageView.dart';

class LoanDetails extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  LoanDetails(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<LoanDetails> createState() => _LoanDetailsState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _LoanDetailsState extends State<LoanDetails> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;
  TextEditingController _incomeController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _maidenNameController = TextEditingController();
  TextEditingController _mobileNumberController =
      TextEditingController(text: '+230 677 1289');
  TextEditingController _nicController =
      TextEditingController(text: '970625161119990');

  _LoanDetailsState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  void initState() {
    super.initState();

    // Initialize the _incomeController with the value of the 'name' property.
    _incomeController.text = name;
    _lastNameController.text = lastName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //application
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

            SS24(),
            Container(
              width: 384,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Body_bold_16('Application details', Colors.black),
                    SS4(),
                    Body_bold_14(
                        'Loan details (2/5)', AppTheme.colors.darkGrey3)
                  ]),
            ),
            SS24(),
            //add applicant
            Container(
              width: 384,
              child: Row(
                children: [
                  Container(
                    child: Center(
                        child: Image(
                            image: AssetImage('assets/homePage/add.png'))),
                    width: 52,
                    height: 52,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: Color(0xFFC43543)),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 20,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Body_bold_14('Click here to add applicant',
                      AppTheme.colors.primaryRed),
                ],
              ),
            ),
            SS16(),
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
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: [
                    ProfileImage(),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Body_bold_16(
                            '$name $maidenName $lastName', Colors.black),
                        SS4(),
                        Body_bold_10('NIC:97062517789000', Colors.black)
                      ],
                    )
                  ],
                ),
              ),
            ),

            SS72(),
            UpdateButton(
              buttonText: 'Next',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DefaultPage(
                        marriage: marriage,
                        name: _incomeController.text,
                        lastName: _lastNameController.text,
                        maidenName: _maidenNameController.text,
                        newJob: true,
                        application: true)));
              },
            ),
            SS8(),
            InkWell(
              child: Body_bold_18('Save for later', AppTheme.colors.linkBlue),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DefaultPage(
                        marriage: marriage,
                        name: _incomeController.text,
                        lastName: _lastNameController.text,
                        maidenName: _maidenNameController.text,
                        newJob: true,
                        application: true)));
              },
            ),
          ],
        ),
      )),
      backgroundColor: Colors.white,
    );
  }
}
