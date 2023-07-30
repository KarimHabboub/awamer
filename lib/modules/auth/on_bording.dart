import 'package:flutter/material.dart';
import '../../shared/network/local/cache_helper.dart';
import '../../shared/style/colors.dart';
import 'login.dart';

class BoardingModel {
  String image;
  String title;
  String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final boardController = PageController(initialPage: 2);

  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/login/on_boarding3.png',
        title: 'نختار لكم افضل العروض  والاسعار',
        body: 'هذا النص هو مثال لنص يمكن أن يستبدل'),
    BoardingModel(
        image: 'assets/login/on_boarding2.png',
        title: 'نعرض احتياجاتك بأسلوب المزاد',
        body: 'هذا النص هو مثال لنص يمكن أن يستبدل'),
    BoardingModel(
        image: 'assets/login/on_boarding1.png',
        title: 'اكتب تفاصيل احتياجاتك ',
        body: 'هذا النص هو مثال لنص يمكن أن يستبدل'),
  ];

  bool isLast = false;

  void onSubmit(context) {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value == true) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) =>  LoginScreen()),
            (route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 22),
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) =>
                  onBoardingItemBuilder(boarding[index]),
              itemCount: boarding.length,
              physics: const BouncingScrollPhysics(),
              controller: boardController,
              onPageChanged: (index) {
                if (index == 0) {
                  isLast = true;
                } else {
                  isLast = false;
                }
              },
            ),
          ),
          const SizedBox(height: 40),
          FloatingActionButton(
            backgroundColor: myColor,
            onPressed: () {
              if (isLast) {
                onSubmit(context);
              } else {
                boardController.previousPage(
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.fastLinearToSlowEaseIn,
                );
              }
            },
            child: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_forward_ios),
            ),
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }

  Widget onBoardingItemBuilder(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image(
                    image: AssetImage(model.image),
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image(
                    image: AssetImage("assets/login/border.png"),
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
              ],
            ),
          )),
          const SizedBox(height: 50),
          Text(
            model.title,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 23),
          Text(
            model.body,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 60),
        ],
      );
}
