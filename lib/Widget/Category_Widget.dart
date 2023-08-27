import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/app_color.dart';

import '../Utils1/inputText.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 10, top: 2, bottom: 2),
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset(
                      'asset/$i.png',
                      height: 40,
                      width: 40,
                    ),
                  ),
                  inputText(text: 'Category', size: 15),
                ],
              ),
            )
        ],
      ),
    );
  }
}
