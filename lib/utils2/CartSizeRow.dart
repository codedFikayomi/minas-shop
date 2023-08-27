import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';

class CartSizeRow extends StatelessWidget {
  const CartSizeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          inputText(
            text: 'Size :    ',
            size: 15,
            color: Styles.pry,
          ),
          Row(
            children: [
              for (int i = 7; i < 12; i++)
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Styles.pry1,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: inputText(
                    text: i.toString(),
                    size: 15,
                    color: Styles.pry,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
