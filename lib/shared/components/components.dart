import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/styles.dart';

AppBar myAppBar({required BuildContext context, required String title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    shadowColor: Colors.grey,
    title: Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 21,
            color: Colors.black,
          ), // أيقونة مخصصة للـ "pop"
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.textStyle16,
          ),
        ),
      ],
    ),
  );
}

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.textControl,
    required this.keyboardType,
    this.label,
    this.prefix,
    required this.validator,
    this.obscureText = false,
    this.suffix,
    this.suffixPressed,
    this.onSubmit,
    this.onTap,
    this.onChange,
    this.hintText,
    this.inputTextStyle,
    this.textAlign = TextAlign.start,
  });

  final TextEditingController textControl;
  final TextInputType keyboardType;
  final String? label;
  final TextStyle? inputTextStyle;
  final TextAlign textAlign;
  final String? hintText;
  final Icon? prefix;
  final String? Function(dynamic value) validator;
  final bool obscureText;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final ValueChanged<String>? onSubmit;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textControl,
      keyboardType: keyboardType,
      style: inputTextStyle,
      textAlign: textAlign,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Styles.textStyle14.copyWith(color: myCFCFCFColor),
        hintText: hintText,
        hintStyle: Styles.textStyle14.copyWith(color: myCFCFCFColor),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: myCFCFCFColor, width: 2.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: myCFCFCFColor, width: 5.0),
          // لون الحدود عند الضغط
          borderRadius: BorderRadius.circular(12.0),
        ),
        prefixIcon: prefix,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: myCFCFCFColor,
                ),
              )
            : null,
      ),
      cursorColor: myColor,
      obscureText: obscureText,
      validator: validator,
      onFieldSubmitted: onSubmit,
      onTap: onTap,
      onChanged: onChange,
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.color,
    this.height,
    this.textStyle,
  });

  final double width;

  final double? height;

  final Color? color;

  final String text;
  final TextStyle? textStyle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          child: Text(
            text,
            style:
                textStyle ?? Styles.textStyle16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({
    super.key,
    required this.onPressed,
  });
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: myFF5B50Color,
      height: 20,
      minWidth: 25,
      child: const Text(
        "إبلاغ",
        style: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
