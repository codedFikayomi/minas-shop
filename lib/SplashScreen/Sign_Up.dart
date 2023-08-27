import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minas_shop/Utils1/app_color.dart';
import 'package:minas_shop/Utils1/inputText.dart';
import 'package:minas_shop/utils2/Button.dart';

import '../utils2/SignUp_stack.dart';
import '../utils2/SignUp_textField.dart';
import 'LogInPage.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final pController = TextEditingController();
  final text1Controller = TextEditingController();
  final text2Controller = TextEditingController();
  final text3Controller = TextEditingController();
  bool obscure = !false;

  @override
  void dispose() {
    text1Controller.dispose();
    text2Controller.dispose();
    text3Controller.dispose();
    pController.dispose();
  }

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
                const inputText(text: 'Sign Up', size: 20),
                Styles.height,
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  height: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const inputText(
                        text: 'Name',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      const SizedBox(height: 3),
                      SignUpTextfield(
                        controller: text1Controller,
                      ),
                      const SizedBox(height: 40),
                      const inputText(
                        text: 'Username',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      const SizedBox(height: 3),
                      SignUpTextfield(
                        controller: text2Controller,
                      ),
                      const SizedBox(height: 40),
                      const inputText(
                        text: 'Email',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      const SizedBox(height: 3),
                      SignUpTextfield(
                        controller: text3Controller,
                      ),
                      const SizedBox(height: 40),
                      const inputText(
                        text: 'Password',
                        size: 18,
                        fontweight: FontWeight.w600,
                      ),
                      TextFormField(
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                        obscureText: obscure,
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
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Button(40, 150, Styles.pry, 'Sign Up', 0, 15, () {
                  Navigator.push(context, CupertinoPageRoute(
                    builder: (context) {
                      return const LogInPage();
                    },
                  ));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
