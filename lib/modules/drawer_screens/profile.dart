import 'package:awamer/shared/style/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/style/styles.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBackgroundColor,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/login/Group 1547.png"),
              fit: BoxFit.cover,

            ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myCustomAppBar(title: "ملف الشخصي", context: context),
              SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .3,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: myColor,
                          ),
                        ),
                        child: ClipOval(
                            child: CachedNetworkImage(
                                imageUrl:
                                'https://img.freepik.com/free-photo/handsome-young-man-with-arms-crossed-white-background_23-2148222620.jpg?w=740&t=st=1691134889~exp=1691135489~hmac=9d6b32138736e4416cff35ae04621b449a18d007c67044dc0df4a2b227ae33a2')),
                      ),
                      Text(
                        "كريم رشيد حبوب",
                        style: Styles.textWhiteStyle16.copyWith(color: myColor),
                      ),
                      Text(
                        "email@example.com",
                        style: Styles.textStyle14.copyWith(
                            color: myCFCFCFColor),
                      ),
                      const Text(
                        "0590000073",
                        style: Styles.textStyle16,
                      ),
                      SizedBox(height: 45,),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: myColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "اسم الحرفة",
                    style: Styles.textStyle16,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "تأجير أجهزة كهربائية",
                    style: Styles.textStyle16.copyWith(
                      color: my828282Color,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 23,
              ),
              const Text(
                "تفاصيل عن الحرفة",
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف",
                style: Styles.textStyle14.copyWith(color: my828282Color),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_rounded,
                    size: 40,
                    color: myColor,
                  ),
                  const Text(
                      "عدد  الطالبات",
                      style: Styles.textStyle16
                  ),
                  const SizedBox(width: 18,),
                  Text(
                    '20',
                    style: Styles.textStyle14.copyWith(
                      color: my828282Color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_rounded,
                    size: 40,
                    color: myColor,
                  ),
                  Text(
                      "عدد  الطالبات",
                      style: Styles.textStyle16
                  ),
                  const SizedBox(width: 18,),
                  Text(
                    '20',
                    style: Styles.textStyle14.copyWith(
                      color: my828282Color,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_right_rounded,
                    size: 40,
                    color: myColor,
                  ),
                  Text(
                      "عدد  الطالبات",
                      style: Styles.textStyle16
                  ),
                  const SizedBox(width: 18,),
                  Text(
                    '20',
                    style: Styles.textStyle14.copyWith(
                      color: my828282Color,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
