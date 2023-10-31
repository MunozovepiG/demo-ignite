import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:demo_ignite/DSM/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String? image;
  String? productHeading;
  String? productDescription;
  VoidCallback onPressed;
  ProductCard(
      {this.image,
      this.productDescription,
      this.productHeading,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383,
      height: 114,
      decoration: ShapeDecoration(
        color: AppTheme.colors.primaryRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 148.36,
            height: 117,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("$image"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.yellow,
                width: 176,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Body_bold_16('$productHeading', Colors.white),
                      SS4(),
                      Body_bold_14('$productDescription', Colors.white)
                    ]),
              ),

              //the icon button

              IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

//resume card

class ResumeCard extends StatelessWidget {
  String? date;
  Color color;
  String? message;
  String? description;
  String? image;
  String? buttonText;
  VoidCallback onPressed;

  ResumeCard(
      {this.date,
      required this.color,
      this.message,
      this.description,
      this.image,
      this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      height: 120,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 348,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              //SS16(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: ShapeDecoration(
                            color: color,
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Body_bold_16('$date', Colors.black)
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, iconSize: 18, icon: Icon(Icons.close))
                ],
              ),
              // SS8(),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 198,
                        child:
                            Body_bold_14('$message', AppTheme.colors.darkGrey3),
                      ),
                      SS8(),
                      InkWell(
                        child: Container(
                          width: 80,
                          height: 22,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFC43543)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Center(
                            child: Body_regular_12(
                                '$buttonText', AppTheme.colors.primaryRed),
                          ),
                        ),
                        onTap: onPressed,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 107.01,
                    height: 72,
                    child: Image(image: AssetImage('$image')),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class MarketingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384,
      height: 120,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 20,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 248,
            child: Column(children: [
              SS8(),
              Row(
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: ShapeDecoration(
                      color: AppTheme.colors.green,
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Body_bold_16('Do not miss out', Colors.black)
                ],
              ),
              SS4(),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Body_bold_18(
                    '80% of entrepreneurs in Mauritius are part of MCB punch',
                    Colors.black),
              )
            ]),
          ),
          Container(
            width: 134,
            height: 120,
            decoration: ShapeDecoration(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.13),
                  bottomRight: Radius.circular(16.13),
                ),
              ),
            ),
            child: Stack(children: [
              Image(image: AssetImage('assets/homePage/okay.png')),
              Positioned(
                top: 0, // Adjust the top position as needed
                right: 0, // Adjust the right position as needed
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(
                      Icons.close), // Replace 'your_icon' with the desired icon
                  onPressed: () {
                    // Handle the button's onPressed event
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
