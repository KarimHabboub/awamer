import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import '../../shared/style/styles.dart';

class ForgotYourPassword extends StatelessWidget {
  ForgotYourPassword({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Stack(
        children: [
          const Image(
            image: AssetImage("assets/login/Group 1547.png"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 18,
                            color: Colors.black,
                          ), // أيقونة مخصصة للـ "pop"
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: const Center(
                            child: Text(
                              "نسيت كلمة المرور",
                              textAlign: TextAlign.center,
                              style: Styles.textStyle16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 67),
                    const Image(
                      image: AssetImage("assets/login/lock.png"),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .15),
                      child: const Text(
                        "قم بإدخال عنوان بريدك الإلكتروني لتلقي التعليمات من أجل إعادة ضبط كلمة المرور",
                        style: Styles.textStyle16,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "البريد الإلكتروني",
                        style: Styles.textStyle16,
                      ),
                    ),
                    MyTextFormField(
                      textControl: emailController,
                      keyboardType: TextInputType.emailAddress,
                      inputTextStyle: Styles.textStyle14,
                      hintText: "       ادخل البريد الإلكتروني",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "يجب إدخال البريد الإلكتروني ";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 60),
                    MyButton(
                      text: "التالي",
                      width: MediaQuery.of(context).size.width * .9,
                      onPressed: () {},
                      color: myColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
