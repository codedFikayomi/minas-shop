import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';

class ColorPickRow extends StatelessWidget {
  const ColorPickRow({
    Key? key,
    required this.clrs,
  }) : super(key: key);

  final List<Color> clrs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          inputText(
            text: 'Color : ',
            size: 15,
            color: Styles.pry,
          ),
          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: clrs[i],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                        )
                      ]),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
