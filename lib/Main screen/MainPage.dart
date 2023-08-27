import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/Utils1/inputText.dart';
import 'package:minas_shop/Widget/ItemsWidget.dart';
import '../Widget/Category_Widget.dart';
import '../utils2/CustomAppBar.dart';
import '../utils2/Search_Container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            //the app bar
             const CustomAppBar(),
            // the main area consisting of sections like search ,categories and items display
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Styles.pry2.withOpacity(0.1),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchContainer(),
                    Styles.height,
                    inputText(
                      text: 'Category',
                      size: 22,
                      color: Styles.pry2,
                    ),
                    //categoires widget to display various products by categories
                    Styles.height,
                    const CategoryWidget(),
                    //best selling or hotlist item grid
                    Styles.height,
                    inputText(
                      text: 'Best Selling',
                      size: 22,
                      color: Styles.pry2,
                    ),
                    const SizedBox(height: 5),
                    ItemsWidget(),
                  ]),
            )
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
