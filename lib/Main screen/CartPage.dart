import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/utils2/CartSizeRow.dart';

import '../Utils1/inputText.dart';
import '../Widget/CartBottomNav.dart';
import '../utils2/CartBar.dart';
import '../utils2/ColorPickRow.dart';

class CartPage extends StatelessWidget {
  String imgList, imgName;
  CartPage(this.imgList, this.imgName);

  List<Color> clrs = [
    Colors.green,
    Colors.red,
    Colors.black,
    Colors.brown,
    Colors.indigo,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CartBar(
                text: 'Cart',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: primary.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ),
                child: Center(
                  child: Image.asset(
                    'asset/$imgList.png',
                    height: 250,
                    width: 250,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    inputText(
                      text: imgName,
                      size: 20,
                      color: Styles.pry,
                    ),
                    inputText(
                      text: '13 Units',
                      size: 15,
                      color: Styles.pry,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: 1.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                      itemBuilder: (context, _) => Icon(
                        Icons.favorite,
                        color: Styles.pry,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    inputText(text: 'Rate Us', size: 15, color: Styles.pry)
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: inputText(
                  align: TextAlign.justify,
                  text:
                      'This product is imported and can be returned within the first two weeks of delivery if found in a bad state or not up to thequality you ordered',
                  size: 15,
                  color: Styles.pry,
                ),
              ),
              Styles.height,
              const CartSizeRow(),
              Styles.height,
              ColorPickRow(clrs: clrs),
              Styles.height,
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CartBottomNav(),
    );
  }
}
