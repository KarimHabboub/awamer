import 'package:awamer/shared/components/components.dart';
import 'package:awamer/shared/style/styles.dart';
import 'package:flutter/material.dart';

import '../../shared/style/colors.dart';

class TransferringToAPremiumAccountScreen extends StatelessWidget {
  const TransferringToAPremiumAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: "شروط تحويل الى حساب مميز"),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد",
                style: Styles.textStyle14,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle, color: myColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, color: myColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, color: myColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, color: myColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, color: myColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.circle, color: myColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                          "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة"),
                    ],
                  ),
                ],
              ),
            ),
            MyButton(
              text: "أوافق على الشروط",
              onPressed: () {},
              color: myBlackColor,
              width: MediaQuery.of(context).size.width * .9,
            )
          ],
        ),
      ),
    );
  }
}
