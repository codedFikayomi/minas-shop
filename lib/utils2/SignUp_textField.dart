import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';

class SignUpTextfield extends StatelessWidget {
  final controller;
  SignUpTextfield({
    Key? key, required this.controller,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      keyboardType: TextInputType.text,
      cursorColor: Styles.pry2,
      cursorHeight: 18,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          isDense: true,
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Styles.pry2)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 1.2),
          )),
    );
  }
}
