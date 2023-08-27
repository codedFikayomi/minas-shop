import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/Utils1/inputText.dart';

class FavoriteItemList extends StatelessWidget {
  const FavoriteItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 3; i < 9; i++)
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 0.4,
                  color: Styles.pry2.withOpacity(0.3),
                  offset: const Offset(1, 1),
                ),
                BoxShadow(
                  blurRadius: 0.5,
                  spreadRadius: 0.4,
                  color: Styles.pry2.withOpacity(0.02),
                  offset: const Offset(-1, -1),
                )
              ],
              color: Styles.pry1,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(children: [
              Radio(
                value: '',
                groupValue: '',
                onChanged: ((value) {}),
                activeColor: Styles.pry,
              ),
              Container(
                height: 90,
                width: 90,
                margin: const EdgeInsets.all(5),
                child: Image.asset('asset/$i.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5, top: 10, bottom: 5, right: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      inputText(
                        text: 'Available',
                        size: 18,
                        color: Styles.pry,
                      ),
                      SizedBox(
                        width: 80,
                        height: 45,
                        child: inputText(
                          align: TextAlign.left,
                          text: 'This product was liked by you few weeks ago',
                          size: 12,
                          color: Styles.pry,
                        ),
                      ),
                      inputText(
                        text: '\$45',
                        size: 15,
                        color: Styles.pry,
                      ),
                    ]),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.delete,
                      color: Styles.pry2,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          height: 20,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Styles.pry1,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 2),
                              ]),
                          child: const Center(
                            child: Icon(CupertinoIcons.minus, size: 13),
                          ),
                        ),
                        inputText(
                          text: '01',
                          size: 16,
                          color: Styles.pry,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          height: 20,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Styles.pry1,
                              shape: BoxShape.circle,
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 2),
                              ]),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 13,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
      ],
    );
  }
}
