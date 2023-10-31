import 'package:demo_ignite/DSM/fonts.dart';
import 'package:demo_ignite/DSM/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TodayCard extends StatelessWidget {
  String? date;
  Color color;
  String? message;
  String? description;
  String? image;

  TodayCard(
      {this.date,
      required this.color,
      this.message,
      this.description,
      this.image});

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
            child: Column(children: [
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
                  Container(
                    width: 198,
                    child: Body_bold_18('$message', Colors.black),
                  ),
                  SizedBox(
                    width: 11,
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
