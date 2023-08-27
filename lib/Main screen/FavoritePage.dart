import 'package:flutter/material.dart';
import 'package:minas_shop/utils2/CartBar.dart';
import 'package:minas_shop/utils2/FavoriteAppBar.dart';

import '../Utils1/app_color.dart';
import '../Widget/FavoriteItemList.dart';
import '../utils2/CustomAppBar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.pry1.withOpacity(0.05),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: const [FavoriteAppBAr(),
           FavoriteItemList()],
        ),
      )),
    );
  }
}
