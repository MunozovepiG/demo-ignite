import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:demo_ignite/screens/profile.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/homePage/profileImage.png"),
          fit: BoxFit.fill,
        )));
  }
}

class Header extends StatelessWidget {
  VoidCallback onPressed;

  Header({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.colors.white,
      width: MediaQuery.of(context).size.width * 1.0,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              InkWell(
                child: ProfileImage(),
                onTap: onPressed,
              ),
              Container(
                child: Image(
                  image: AssetImage('assets/homePage/Logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 24,
                height: 24,
                child: Image(
                    image: AssetImage('assets/homePage/notifications.png')),
              )
            ])),
      ),
    );
  }
}

//plain header
class PlainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.colors.white,
      width: MediaQuery.of(context).size.width * 1.0,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Image(
              image: AssetImage('assets/homePage/Logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ])),
      ),
    );
  }
}

//mobile header

class MobileHeader extends StatelessWidget {
  String heading;
  VoidCallback onPressed;
  MobileHeader({required this.heading, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: 56,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back)),
              Container(
                  width: 320,
                  child: Center(child: Body_bold_16('$heading', Colors.black)))
            ]),
      ),
    );
  }
}
