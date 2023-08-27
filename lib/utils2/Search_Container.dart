import 'package:flutter/material.dart';

import '../Utils1/app_color.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Styles.pry1,
           borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            width: 250,
            height: 40,
            child: TextFormField(
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              cursorColor: Styles.pry2,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Styles.pry),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          const Icon(
            Icons.camera_alt,
          )
        ],
      ),
    );
  }
}
