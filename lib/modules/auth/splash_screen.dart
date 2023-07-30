import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/style/colors.dart';
import 'on_bording.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // استخدم Future.delayed لعرض شاشة البداية لفترة قبل التنقل إلى الشاشة التالية
    Future.delayed(const Duration(seconds: 2), () {
      // انتقل إلى الشاشة الرئيسية (MyHomePage) بعد مرور ثانيتين
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
      SystemUiOverlay.bottom
    ]);
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: const Stack(
        children: [
          Image(
            image: AssetImage("assets/login/Group 1547.png"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Image(
              image: AssetImage("assets/login/logo.png"),

            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage("assets/login/graphic image.png"),

            ),
          ),
        ],
      ),
    );
  }
}
