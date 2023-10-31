import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final String? labelText;

  final void Function(String)? onChanged;
  bool obsecureText;
  MyCustomTextField(
      {Key? key,
      required this.controller,
      this.labelText,
      this.onChanged,
      required this.obsecureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Body_regular_12('$labelText', Colors.black),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 56,
            color: Colors.white,
            child: TextFormField(
              obscureText: obsecureText,
              controller: controller,
              decoration: InputDecoration(
                  labelText: labelText,
                  labelStyle: TextStyle(
                    color: AppTheme.colors.darkGrey3,
                    fontSize: 12,
                    fontFamily: 'Lato',
                  )),
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

//the dropdown

class MyDropdown extends StatefulWidget {
  final List<String> values;
  final String preselectedValue;
  final Function(String) onChanged;

  final String? labelText;

  MyDropdown(
      {required this.values,
      required this.preselectedValue,
      required this.onChanged,
      required this.labelText});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.preselectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Body_regular_12('${widget.labelText}', Colors.black),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
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
              value: _selectedValue,
              items: widget.values
                  .map(
                    (value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value != null && value != _selectedValue) {
                  setState(() {
                    _selectedValue = value;
                    widget.onChanged(_selectedValue);
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
