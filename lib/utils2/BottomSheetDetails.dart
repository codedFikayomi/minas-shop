import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';


class BottomSheetDetails extends StatelessWidget {
  final String text1,text2;
  const BottomSheetDetails({
    
    Key? key, required this.text1, required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        inputText(
          text: text1,
          size: 18,
          color: Styles.pry,
        ),
        inputText(
          text: text2,
          size: 18,
          color: Styles.pry,
        ),
      ],
    );
  }
}
