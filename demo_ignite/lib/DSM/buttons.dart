import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:flutter/material.dart';

class QuickLink extends StatelessWidget {
  String? image;
  String? label;

  QuickLink({this.image, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 93,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Center(child: Image(image: AssetImage('$image'))),
              width: 52,
              height: 52,
              decoration: ShapeDecoration(
                color: Color(0xFFC43543),
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 20,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            SS4(),
            Container(
                width: 52,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Body_bold_14('$label', Colors.black),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class EmptyQuickLink extends StatelessWidget {
  String? image;
  String? label;

  EmptyQuickLink({this.image, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 93,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Center(child: Image(image: AssetImage('$image'))),
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
            SS4(),
            Container(
                width: 52,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Body_bold_14('$label', Colors.black),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

//the profile buttons

class ProfileButton extends StatelessWidget {
  String label;
  String image;
  VoidCallback onPressed;

  ProfileButton(
      {required this.label, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 96,
        height: 96,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFD0D0D0)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 56,
            height: 56,
            decoration: ShapeDecoration(
              color: Color(0xFFF1F1F1),
              shape: OvalBorder(),
            ),
            child: Center(
                child: Image(
              image: AssetImage('$image'),
            )),
          ),
          SS8(),
          Body_regular_12(label, Colors.black)
        ]),
      ),
      onTap: onPressed,
    );
  }
}

//update button
class UpdateButton extends StatelessWidget {
  String buttonText;
  VoidCallback onPressed;

  UpdateButton({required this.buttonText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 328,
        height: 48,
        decoration: BoxDecoration(color: Colors.black),
        child: Center(child: Body_bold_18(buttonText, Colors.white)),
      ),
      onTap: onPressed,
    );
  }
}

//the chips

class ChipButton extends StatelessWidget {
  String label;
  VoidCallback onPressed;
  bool active;

  ChipButton(
      {required this.label, required this.onPressed, required this.active});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 112,
        height: 32,
        decoration: ShapeDecoration(
          color: (active) ? Color(0xFFDC143D) : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFDC143D)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
            child: Body_bold_16(
                '$label', (active) ? Colors.white : Color(0xFFDC143D))),
      ),
      onTap: onPressed,
    );
  }
}

//the small round button

class SmallRoundButton extends StatelessWidget {
  String text;
  Color color;
  VoidCallback onPressed;

  SmallRoundButton(
      {required this.text, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 80,
        height: 22,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFC43543)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(child: Body_regular_12(text, color)),
      ),
      onTap: onPressed,
    );
  }
}
