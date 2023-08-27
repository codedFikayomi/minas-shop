import 'package:flutter/material.dart';
import 'package:minas_shop/utils2/CartBar.dart';
import 'package:minas_shop/utils2/CustomAppBar.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.pry1.withOpacity(0.8),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CartBar(text: 'Check Out'),
          Spacer(),
          inputText(
              text: 'You do not have  pending List',
              size: 18,
              color: Styles.pry2),
          Spacer(),
        ],
      )),
    );
  }
}
