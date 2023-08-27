import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minas_shop/Main%20screen/FavoritePage.dart';
import 'package:minas_shop/Main%20screen/MainPage.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/Utils1/inputText.dart';

import '../Main screen/CheckOutPage.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var currentIndex = 0;

  final pages = [const HomePage(), const FavoritePage()];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Styles.pry,
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(
            builder: (context) {
              return const CheckOutPage();
            },
          ));
        },
        child: Icon(
          Icons.shopping_cart_checkout,
          color: Styles.pry1,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 50,
          color: Styles.pry1,
          shape: const CircularNotchedRectangle(),
          notchMargin: 4,
          child: SizedBox(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 30,
                          color: currentIndex == 0 ? Styles.pry : Colors.grey,
                        ),
                        inputText(
                          text: 'Home',
                          size: 10,
                          color: currentIndex == 0 ? Styles.pry : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Styles.width,
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const FavoritePage();
                        currentIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 30,
                          color: currentIndex == 1 ? Styles.pry : Colors.grey,
                        ),
                        inputText(
                          text: 'Favorite',
                          size: 10,
                          color: currentIndex == 1 ? Styles.pry : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ]),
          )),
    );
  }
}
