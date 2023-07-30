import 'package:awamer/modules/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/components/components.dart';
import '../../shared/style/colors.dart';
import '../../shared/style/styles.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text('تسجيل حساب جديد',
              style: Styles.textStyle16.copyWith(color: Colors.black)),
        ),
        leading: IconButton(
          icon: Transform.rotate(
            angle: 3.14,
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ), // أيقونة مخصصة للـ "pop"
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("الاسم", style: Styles.textStyle16),
              MyTextFormField(
                textControl: nameController,
                keyboardType: TextInputType.text,
                inputTextStyle: Styles.textStyle14,
                hintText: "       أدخل الاسم",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "يجب إدخال كلمة المرور ";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Text("البريد الإلكتروني", style: Styles.textStyle16),
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
              const SizedBox(height: 20),
              Text("رقم الهاتف", style: Styles.textStyle16),
              MyTextFormField(
                textControl: phoneController,
                keyboardType: TextInputType.phone,
                inputTextStyle: Styles.textStyle14,
                hintText: "       أدخل رقم الهاتف",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "يجب إدخال رقم الهاتف ";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Text("كلمة المرور", style: Styles.textStyle16),
              MyTextFormField(
                textControl: passwordController,
                keyboardType: TextInputType.visiblePassword,
                inputTextStyle: Styles.textStyle14,
                hintText: "       أدخل كلمة المرور",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "يجب إدخال كلمة المرور ";
                  }
                  return null;
                },
                suffix: Icons.remove_red_eye,
              ),
              const SizedBox(height: 20),
              Text("تاكيد كلمة المرور", style: Styles.textStyle16),
              MyTextFormField(
                textControl: passwordController2,
                keyboardType: TextInputType.visiblePassword,
                inputTextStyle: Styles.textStyle14,
                hintText: "       أدخل كلمة المرور",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "كلمة المرور ليست متطابقة ";
                  }
                  return null;
                },
                suffix: Icons.remove_red_eye,
              ),
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
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'ليس لديك حساب ؟ ',
                      style: Styles.textStyle14,
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
        ),
      ),
    );
  }
}
