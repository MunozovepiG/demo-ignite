import 'package:demo_ignite/DSM/buttons.dart';
import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:flutter/material.dart';

class PreLoginAd extends StatelessWidget {
  String image;
  String title;
  String descrip;
  String buttonText;
  VoidCallback onPressed;

  PreLoginAd(
      {required this.image,
      required this.title,
      required this.descrip,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 302,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(children: [
        Container(
          height: 163,
          decoration: ShapeDecoration(
              color: AppTheme.colors.darkGrey3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              )),
          child: Image(
            image: AssetImage('assets/homePage/homeLoan.png'),
            fit: BoxFit.contain, // You can adjust BoxFit as needed
          ),
        ),
        SS16(),
        Container(
            width: 341,
            child: Heading_2('Your dream home is attianable', Colors.black)),
        SS8(),
        Container(
          width: 341,
          child: Body_bold_14(
              'Did you know at MCB we offer home loans at a fixed rate of 4.50% for the first 2 years.',
              AppTheme.colors.darkGrey3),
        ),
        SS8(),
        Container(
          width: 341,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmallRoundButton(
                text: '$buttonText',
                color: AppTheme.colors.primaryRed,
                onPressed: onPressed,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
