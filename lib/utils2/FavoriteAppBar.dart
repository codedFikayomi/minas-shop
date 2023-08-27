import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';

class FavoriteAppBAr extends StatelessWidget {
  const FavoriteAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      color: Styles.pry1,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.favorite,
            size: 30,
            color: Styles.pry,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: inputText(
            text: 'Selected Favorites',
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
