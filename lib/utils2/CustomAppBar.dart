import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minas_shop/Main%20screen/CartPage.dart';
import 'package:minas_shop/Main%20screen/CheckOutPage.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/Utils1/inputText.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      color: Styles.pry1,
      child: Row(children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Styles.pry,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: inputText(
            text: 'Minas Hub',
            size: 20,
            color: Styles.pry2,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(
              builder: (context) {
                return CheckOutPage();
              },
            ));
          },
          child: Icon(
            Icons.shopping_bag_rounded,
            color: Styles.pry,
          ),
        )
      ]),
    );
  }
}
