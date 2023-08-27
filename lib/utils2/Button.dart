// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';

Widget Button(double height, double width, Color color, String text,
    double RadiuSize, double textSize,VoidCallback ontap) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(RadiuSize),
      ),
      child: Center(
        child: inputText(
          text: text,
          size: textSize,
          color: Styles.pry1,
        ),
      ),
    ),
  );
}
