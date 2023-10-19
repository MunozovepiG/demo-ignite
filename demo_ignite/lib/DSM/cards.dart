import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
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
        color: Color(0xFFE65A76),
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
