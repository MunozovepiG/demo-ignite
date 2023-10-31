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

class WorkDetails extends StatefulWidget {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  WorkDetails(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  @override
  State<WorkDetails> createState() => _WorkDetailsState(
      name: name,
      newJob: newJob,
      lastName: lastName,
      maidenName: maidenName,
      application: application,
      marriage: marriage);
}

class _WorkDetailsState extends State<WorkDetails> {
  String name;
  String lastName;
  String maidenName;
  bool newJob;
  bool application;
  String marriage;

  _WorkDetailsState(
      {required this.name,
      required this.lastName,
      required this.maidenName,
      required this.newJob,
      required this.application,
      required this.marriage});

  TextEditingController _incomeController =
      TextEditingController(text: 'MUR 100,000.00');
  String status = 'Employed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        color: AppTheme.colors.greyBackground,
        child: Column(children: [
          MobileHeader(
            heading: 'Work details',
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
          SS56(),
//dropdown employment status
          Container(
            width: 384,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Body_regular_12('Employment status', Colors.black),
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
                    value: status,
                    items: ["Employed", "Self Employed", 'Unemployed']
                        .map(
                          (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        status = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),

          (status == 'Employed')
              ? Column(
                  children: [
                    SS24(),
                    Container(
                      width: 384,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Body_regular_12(
                                  'Employment status', Colors.black),
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
                              icon: Icon(Icons.arrow_drop_down,
                                  color: Colors.black),
                              value: 'MCB',
                              items: [
                                "MCB",
                                "Other",
                              ]
                                  .map(
                                    (job) => DropdownMenuItem<String>(
                                      value: job,
                                      child: Text(job),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  status = value!;
                                  newJob = true;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SS24(),

                    //job title

                    Container(
                      width: 384,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Body_regular_12('Job title', Colors.black),
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
                              icon: Icon(Icons.arrow_drop_down,
                                  color: Colors.black),
                              value: 'Product designer',
                              items: [
                                "Product designer",
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
                                  status = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  height: 0,
                ),

//

          if (status == 'Self Employed')
            Column(
              children: [
                SS24(),
                //self employment

                Container(
                  width: 384,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Body_regular_12('Self employment type', Colors.black),
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
                          icon:
                              Icon(Icons.arrow_drop_down, color: Colors.black),
                          value: 'Please select',
                          items: ["Please select", "Investor", 'Entrepreneur']
                              .map(
                                (type) => DropdownMenuItem<String>(
                                  value: type,
                                  child: Text(type),
                                ),
                              )
                              .toList(),
                          onChanged: (type) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          Column(
            children: [
              SS24(),
              MyCustomTextField(
                obsecureText: false,
                controller: _incomeController,
                labelText: 'Monthly salary',
                onChanged: (value4) {},
              ),
            ],
          ),

          SS56(),

          UpdateButton(
            buttonText: 'Update',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DefaultPage(
                      marriage: marriage,
                      name: name,
                      lastName: lastName,
                      maidenName: maidenName,
                      newJob: true,
                      application: application)));
            },
          )
        ]),
      )),
      backgroundColor: Colors.white,
    );
  }
}
