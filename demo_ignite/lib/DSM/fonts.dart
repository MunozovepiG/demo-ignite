import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//the heading text
class Heading_1 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Heading_1(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            fontSize: 32,
            color: color ?? Colors.black));
  }
}

class Heading_2 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Heading_2(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: color ?? Colors.black));
  }
}

//body
class Body_bold_18 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_bold_18(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: color ?? Colors.black));
  }
}

class Body_regular_18 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_regular_18(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: color ?? Colors.black));
  }
}

//body
class Body_bold_16 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_bold_16(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: color ?? Colors.black));
  }
}

class Body_regular_16 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_regular_16(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: color ?? Colors.black));
  }
}

class Body_bold_14 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_bold_14(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: color ?? Colors.black));
  }
}

class Body_regular_14 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_regular_14(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: color ?? Colors.black));
  }
}

class Body_regular_12 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_regular_12(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: color ?? Colors.black));
  }
}

class Body_bold_10 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_bold_10(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w600,
            fontSize: 10,
            color: color ?? Colors.black));
  }
}

//small fonts
class Body_regular_8 extends StatelessWidget {
  @override
  final String text;
  final Color? color;

  Body_regular_8(this.text, this.color);

  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.w400,
            fontSize: 8,
            color: color ?? Colors.black));
  }
}
