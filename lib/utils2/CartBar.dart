import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';

class CartBar extends StatelessWidget {
  final String text;
  const CartBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      color: Styles.pry1,
      child: Row(children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: Styles.pry,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: inputText(
            text: text,
            size: 20,
            color: Styles.pry2,
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_vert,
          color: Styles.pry,
        )
      ]),
    );
  }
}
