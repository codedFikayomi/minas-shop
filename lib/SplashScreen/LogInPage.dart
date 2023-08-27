import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minas_shop/Widget/Bottom_Navigation.dart';

import '../Main screen/MainPage.dart';
import '../Utils1/app_color.dart';
import '../Utils1/inputText.dart';
import '../utils2/Button.dart';
import '../utils2/SignUp_stack.dart';
import '../utils2/SignUp_textField.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

final pController = TextEditingController();
final sController = TextEditingController();
final text2Controller = TextEditingController();
bool obscure = !false;
bool obscure1 = !false;

@override
void dispose() {
  pController.dispose();
  sController.dispose();
  text2Controller.dispose();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SignUpStackWidget(),
                const SizedBox(height: 10),
                const inputText(text: 'Log In', size: 20),
                Styles.height,
                Styles.height,
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  // color: Colors.red,
                  height: 285,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const inputText(
                        text: 'Username',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      const SizedBox(height: 3),
                      SignUpTextfield(controller: text2Controller),
                      const SizedBox(height: 45),
                      const inputText(
                        text: 'Password',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      TextFormField(
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        obscureText: obscure,
                        controller: pController,
                        keyboardType: TextInputType.text,
                        cursorColor: Styles.pry2,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 15, left: 5),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              child: obscure
                                  ? Icon(Icons.visibility_off,
                                      size: 20, color: Styles.pry2)
                                  : Icon(Icons.visibility,
                                      size: 20, color: Styles.pry2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Styles.pry2)),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(width: 1.2),
                          ),
                        ),
                      ),
                      const SizedBox(height: 45),
                      const inputText(
                        text: 'Confirm Password',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      TextFormField(
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        obscureText: obscure1,
                        controller: sController,
                        keyboardType: TextInputType.text,
                        cursorColor: Styles.pry2,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 15, left: 5),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  obscure = !obscure1;
                                });
                              },
                              child: obscure
                                  ? Icon(Icons.visibility_off,
                                      size: 20, color: Styles.pry2)
                                  : Icon(Icons.visibility,
                                      size: 20, color: Styles.pry2)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Styles.pry2)),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(width: 1.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Styles.height,
                Styles.height,
                Button(40, 150, Styles.pry, 'Log In', 0, 15, () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) {
                        return BottomNavigation();
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
