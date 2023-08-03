import 'package:awamer/shared/components/components.dart';
import 'package:flutter/material.dart';

import '../../shared/style/colors.dart';
import '../../shared/style/styles.dart';

class Verification extends StatelessWidget {
  Verification({Key? key}) : super(key: key);

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController num3Controller = TextEditingController();
  final TextEditingController num4Controller = TextEditingController();

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
                physics:  const BouncingScrollPhysics(),
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
                          width: MediaQuery.of(context).size.width/2,
                          child: const Center(
                            child: Text(
                              "رمز التحقق",
                              textAlign: TextAlign.center,
                              style: Styles.textStyle16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 67),
                    const Image(
                      image: AssetImage("assets/login/Group 115636.png"),
                    ),
                    const Text(
                      "ادخل رمز التحقق المرسل إلى جوال رقم",
                      style: Styles.textStyle16,
                    ),
                    const SizedBox(height: 17),
                    const Text(
                      "+996 123 456 789",
                      style: Styles.textStyle16,
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      child: Row(
                        children: [
                          Expanded(
                            child: MyTextFormField(
                              textControl: num1Controller,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              hintText: "0",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يجب تعبئة هذا الحقل  ";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: MyTextFormField(
                              textControl: num2Controller,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              hintText: "0",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يجب تعبئة هذا الحقل  ";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: MyTextFormField(
                              textControl: num3Controller,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              hintText: "0",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يجب تعبئة هذا الحقل  ";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: MyTextFormField(
                              textControl: num4Controller,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              hintText: "0",
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "يجب تعبئة هذا الحقل  ";
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 39),
                    TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          text: 'إعادة إرسال الرمز ؟ ',
                          style: Styles.textStyle14,
                          children: [
                            TextSpan(
                              text: '0:59',
                              style: Styles.textStyle14.copyWith(color: myColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 96),
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
