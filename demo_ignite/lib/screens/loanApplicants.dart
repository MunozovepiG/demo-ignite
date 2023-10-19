import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/loanDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../DSM/buttons.dart';
import '../DSM/fonts.dart';
import '../DSM/navigation.dart';
import '../DSM/textFormField.dart';
import 'pageView.dart';

class ApplicationPersonalDetails extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  ApplicationPersonalDetails(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<ApplicationPersonalDetails> createState() =>
      _ApplicationPersonalDetailsState(
          name: name,
          newJob: newJob,
          lastName: lastName,
          maidenName: maidenName,
          application: application,
          marriage: marriage);
}

class _ApplicationPersonalDetailsState
    extends State<ApplicationPersonalDetails> {
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
      TextEditingController(text: '97062517789000');

  _ApplicationPersonalDetailsState(
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
                        'Personal details (1/5)', AppTheme.colors.darkGrey3)
                  ]),
            ),
            SS8(),
            Container(
              width: 384,
              child: Column(
                children: [
                  SS24(),
                  MyCustomTextField(
                    controller: _incomeController,
                    labelText: 'Name',
                    onChanged: (value4) {},
                  ),
                ],
              ),
            ),

            //maiden name
            SS16(),

            Container(
              width: 384,
              child: Column(
                children: [
                  SS24(),
                  MyCustomTextField(
                    controller: _maidenNameController,
                    labelText: 'Lastname at birth',
                    onChanged: (value4) {
                      setState(() {
                        maidenName = value4;
                      });
                    },
                  ),
                ],
              ),
            ),

            //last name
            SS16(),

            Container(
              width: 384,
              child: Column(
                children: [
                  SS24(),
                  MyCustomTextField(
                    controller: _lastNameController,
                    labelText: 'Lastname',
                    onChanged: (value4) {
                      setState(() {
                        lastName = value4;
                      });
                    },
                  ),
                ],
              ),
            ),

            //NIC
            SS16(),

            Container(
              width: 384,
              child: Column(
                children: [
                  SS24(),
                  MyCustomTextField(
                    controller: _nicController,
                    labelText: 'NIC number',
                    onChanged: (value5) {},
                  ),
                ],
              ),
            ),

            //mobile
            SS24(),

            //maritial status

            //dropdown employment status
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
                      items: ["Single", "Married", 'Divorced', 'Other']
                          .map(
                            (value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
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
            SS36(),
            UpdateButton(
              buttonText: 'Next',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoanDetails(
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
