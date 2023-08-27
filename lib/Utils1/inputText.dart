import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class inputText extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final FontWeight? fontweight;
  final TextAlign? align;

  const inputText({
    super.key,
    required this.text,
    required this.size,
    this.fontweight = FontWeight.bold,
    this.color = Colors.black,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.notoSans(
          color: color, fontSize: size, fontWeight: fontweight),
    );
  }
}
