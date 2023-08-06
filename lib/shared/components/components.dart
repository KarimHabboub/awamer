import 'package:flutter/material.dart';
import '../style/colors.dart';
import '../style/styles.dart';

AppBar myAppBar({required BuildContext context, required String title ,num width = 1.5}) {
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
          width: MediaQuery.of(context).size.width /width,
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
Widget myCustomAppBar({required BuildContext context, required String title}) {
  return Row(
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
          width: MediaQuery.of(context).size.width /1.5,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.textStyle16,
          ),
        ),
      ],
    );

}

Future<dynamic> myDialog(
    {required BuildContext context, required String assetImage, String? body}) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.transparent,
      child: Container(
        height: 400,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage('assets/dialog/Mask Group 11.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/dialog/warning.png'),
              const Text(
                "يجب تقديم عرض سعر اقل من ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                body ?? "",
                style: const TextStyle(fontWeight: FontWeight.normal, color: myColor),
              ),
              MyButton(
                text: 'موافق',
                onPressed: () {},
                width: MediaQuery.of(context).size.width * .6,
                color: myBlackColor,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Future<dynamic> myDialogWitheTextFormField(
    {required BuildContext context,
    required String assetImage,
    required String title}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: const RoundedRectangleBorder(),
      backgroundColor: Colors.transparent,
      scrollable: true,
      content: Container(
        height: MediaQuery.of(context).orientation == Orientation.portrait? MediaQuery.of(context).size.height *.5:MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).orientation == Orientation.portrait?MediaQuery.of(context).size.width : MediaQuery.of(context).size.width *.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage('assets/dialog/Mask Group 11.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
          child: Column(
            children: [
              Image.asset(
                assetImage,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: myColor,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      maxLines: null,
                      autovalidateMode: AutovalidateMode.always,
                      decoration: const InputDecoration(border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MyButton(
                        text: 'ابلاغ',
                        onPressed: () {},
                        color: myFF5B50Color,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: MyButton(
                        text: 'الغاء',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: myBlackColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: myCFCFCFColor, width: 2.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: myCFCFCFColor, width: 5.0),
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
    required this.color,
    this.height,
    this.width,
    this.textStyle,
  });

  final double? width;

  final double? height;

  final Color? color;

  final String text;
  final TextStyle? textStyle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
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
