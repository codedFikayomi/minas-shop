import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/Utils1/inputText.dart';

import '../utils2/BottomSheetDetails.dart';

class CartBottomNav extends StatelessWidget {
  const CartBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 100,
      color: Styles.pry1,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: inputText(
                text: '\$275',
                size: 25,
                color: Styles.pry,
              ),
            ),
            InkWell(
              splashColor: Styles.pry2.withOpacity(0.2),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: const BottomSheet(),
                    );
                  },
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Styles.pry,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Styles.pry1,
                    ),
                    inputText(text: 'Check Out', size: 18, color: Styles.pry1)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
      child: Column(
        children: [
          const BottomSheetDetails(
            text1: 'Category',
            text2: 'Bags',
          ),
          const SizedBox(height: 10),
          const BottomSheetDetails(
            text1: 'Units',
            text2: ' Single',
          ),
          const SizedBox(height: 10),
          const BottomSheetDetails(
            text1: 'Total',
            text2: '\$275',
          ),
          Styles.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Styles.pry,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Styles.pry1,
                      size: 18,
                    ),
                    inputText(text: 'Check Out', size: 15, color: Styles.pry1)
                  ],
                ),
              ),
              Image.asset(
                'asset/7.png',
                width: 60,
                height: 60,
              )
            ],
          )
        ],
      ),
    );
  }
}
