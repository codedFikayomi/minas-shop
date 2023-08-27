import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/inputText.dart';
import '../Main screen/CartPage.dart';
import '../Utils1/app_color.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});
  List imgList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  List<String> imgName = [
    'Richard Nile',
    'Addidas',
    'Drotex',
    'Nike',
    'Drotex',
    'Richard Nile',
    'Gucci',
    'Luis Vuitton'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.68,
      children: [
        for (int i = 0; i < 8; i++)
          Container(
            margin: const EdgeInsets.only(right: 10, top: 10, left: 8),
            decoration: BoxDecoration(
                color: Styles.pry1,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Styles.pry,
                    blurRadius: 2,
                    spreadRadius: 0.2,
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Styles.pry,
                        ),
                        child: const Center(
                            child: inputText(text: '-35%', size: 10)),
                      ),
                      Icon(Icons.favorite_outline, color: Colors.red, size: 20)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (context) {
                        return CartPage(imgList[i], imgName[i]);
                      },
                    ));
                  },
                  child: Image.asset(
                    'asset/${imgList[i]}.png',
                    width: 150,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7),
                  child: inputText(
                    text: imgName[i],
                    size: 17,
                    color: Styles.pry,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 7, top: 5),
                  child: inputText(
                    text:
                        'This Product is specially ordered to meet your expectation',
                    size: 12,
                    color: Styles.pry,
                    fontweight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 7, top: 5, bottom: 4),
                      child:
                          inputText(text: '\$45', size: 18, color: Styles.pry),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Styles.pry2,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(10))),
                      child: Icon(
                        Icons.shopping_cart_checkout,
                        size: 20,
                        color: Styles.pry,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
      ],
    );
  }
}
