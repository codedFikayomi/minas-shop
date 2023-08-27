import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/inputText.dart';

import '../Utils1/app_color.dart';

class SignUpStackWidget extends StatelessWidget {
  const SignUpStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 165,
      child: Stack(children: [
        Positioned(
          top: -70,
          left: -15,
          child: Container(
            height: 200,
            width: 200,
            decoration:
                BoxDecoration(color: Styles.pry, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: -40,
          left: -70,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: primary, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 100,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Minas ',
              style: TextStyle(
                  color: Styles.pry2,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'hub',
              style: TextStyle(
                  color: Styles.pry2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ])),
        ),
        Opacity(
          opacity: 0.4,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/1.png'))),
          ),
        )
      ]),
    );
  }
}
