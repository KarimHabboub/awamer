import 'package:flutter/material.dart';

import '../style/colors.dart';

class TopBottomSheet extends StatelessWidget {
  const TopBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 110,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(
                20),
            color: myBlackColor,
          ),
        ),
      ],
    );
  }
}