import 'package:awamer/modules/auth/register.dart';
import 'package:awamer/shared/style/styles.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Stack(
        children: [
          const Image(
            image: AssetImage("assets/login/Group 1551.png"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .35,
            child: const Center(
              child: Image(
                image: AssetImage("assets/login/logo.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .65,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      color: myBlackColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 11,
                                bottom: 35,
                              ),
                              child: Center(
                                  child: Text("تسجيل الدخول",
                                      style: Styles.textStyle16.copyWith(
                                        color: Colors.white,
                                      ))),
                            ),
                            Text("البريد الالكتروني أو رقم الهاتف",
                                style: Styles.textStyle16.copyWith(
                                  color: Colors.white,
                                )),
                            MyTextFormField(
                              textControl: emailController,
                              keyboardType: TextInputType.emailAddress,
                              inputTextStyle: TextStyle(
                                color: myCFCFCFColor
                              ),
                              hintText:
                                  "       ادخل الريد الالكتروني أو رقم الهاتف",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يجب إدخال البريد الإلكتروني أو رقم الهاتف  ";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 30),
                            Text("كلمة المرور",
                                style: Styles.textStyle16.copyWith(
                                  color: Colors.white,
                                )),
                            MyTextFormField(
                              textControl: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              hintText: "       أدخل كلمة المرور",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يجب إدخال كلمة المرور ";
                                }
                                return null;
                              },
                              suffix: Icons.remove_red_eye,
                            ),
                            const SizedBox(height: 22),
                            Text("هل نسيت كلمة المرور ؟",
                                style: Styles.textStyle14.copyWith(
                                  color: myColor,
                                )),
                            const SizedBox(height: 59),
                            MyButton(
                              text: "تسجيل دخول",
                              width: MediaQuery.of(context).size.width * .9,
                              onPressed: () {},
                              color: myColor,
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>  Register()),

                                  );
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: 'ليس لديك حساب ؟ ',
                                    style: Styles.textStyle14.copyWith(color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: 'حساب جديد',
                                        style: Styles.textStyle14.copyWith(color: myColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
