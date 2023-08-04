import 'package:flutter/material.dart';

import '../../../shared/components/components.dart';
import '../../../shared/components/top_bottom_sheet.dart';
import '../../../shared/style/colors.dart';
import '../../../shared/style/styles.dart';

PersistentBottomSheetController<dynamic> showBottomSheetSubmitOnOffer(BuildContext context) {
  return showBottomSheet(
    context: context,
    builder: (context) => Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          )),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [
              const TopBottomSheet(),
              Text(
                "ادخل سعر العرض",
                style: Styles.textStyle16.copyWith(
                  color: myColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ادخل سعر العرض",
                      style: Styles.textStyle16
                          .copyWith(
                          color: myFF5B50Color),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor:
                        myBackgroundColor,
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(
                              15),
                          borderSide:
                          BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 27),
                    const Row(
                      children: [
                        Icon(
                          Icons.attribution,
                          color: myColor,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "نسبة الموقع ",
                          style: Styles.textStyle14,
                        ),
                        Spacer(),
                        Text(
                          "50 ريال ",
                          style: Styles
                              .text66696AStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        Icon(
                          Icons.attribution,
                          color: myColor,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "نسبة الموقع ",
                          style: Styles.textStyle14,
                        ),
                        Spacer(),
                        Text(
                          "50 ريال ",
                          style: Styles
                              .text66696AStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        Icon(
                          Icons.attribution,
                          color: myColor,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "نسبة الموقع ",
                          style: Styles.textStyle14,
                        ),
                        Spacer(),
                        Text(
                          "50 ريال ",
                          style: Styles
                              .text66696AStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        Icon(
                          Icons.attribution,
                          color: myColor,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "نسبة الموقع ",
                          style: Styles.textStyle14,
                        ),
                        Spacer(),
                        Text(
                          "50 ريال ",
                          style: Styles
                              .text66696AStyle14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        Icon(
                          Icons.attribution,
                          color: myColor,
                        ),
                        SizedBox(width: 12),
                        Text(
                          "نسبة الموقع ",
                          style: Styles.textStyle14,
                        ),
                        Spacer(),
                        Text(
                          "50 ريال ",
                          style: Styles
                              .text66696AStyle14,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceAround,
                  crossAxisAlignment:
                  CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyButton(
                          text: "تقديم",
                          color: myBlackColor,
                          height: 45,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyButton(
                          text: "الغاء",
                          height: 45,
                          color: myFF5B50Color,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}