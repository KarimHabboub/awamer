import 'package:awamer/shared/components/my_order_details/widgets/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../modules/order_details/cubit/cubit.dart';
import '../../style/colors.dart';
import '../../style/styles.dart';
import '../components.dart';

class MyOrderDetailsScreen extends StatelessWidget {
  const MyOrderDetailsScreen({
    super.key,
    required this.cubit,
  });

  final OrderDetailsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .45,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      // لون الظل هنا
                      spreadRadius: 5,
                      // انتشار الظل
                      blurRadius: 7,
                      // التموج الضبابي للظل
                      offset: const Offset(
                          0, 3), // تحديد اتجاه الظل (الارتفاع والاتجاه الأفقي)
                    ),
                  ],
                ),
                child: MediaQuery.of(context).orientation ==
                        Orientation.portrait
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('00 : ',
                                              style: Styles.textStyle38),
                                          Text(' ثواني',
                                              style: Styles.textStyle16),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('00 : ',
                                              style: Styles.textStyle38),
                                          Text(' دقائق',
                                              style: Styles.textStyle16),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('00', style: Styles.textStyle38),
                                          Text(' ساعات',
                                              style: Styles.textStyle16),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Icon(
                                          const IconData(
                                            0xe528,
                                            fontFamily: 'MaterialIcons',
                                          ),
                                          color: myColor,
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    const Text(
                                      "مشاركة الأمر",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    MyMaterialButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => Dialog(
                                            shape: RoundedRectangleBorder(),
                                            backgroundColor: Colors.transparent,
                                            child: Container(
                                              height: 400,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/dialog/Mask Group 11.png'),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(30.0),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Image.asset(
                                                        'assets/dialog/warning.png'),
                                                    Text(
                                                      "يجب تقديم عرض سعر اقل من ",
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                    ),
                                                    Text(
                                                      "700 ريال",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: myColor),
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
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 36.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('00 : ',
                                                style: Styles.textStyle38),
                                            Text(' ثواني',
                                                style: Styles.textStyle16),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('00 : ',
                                                style: Styles.textStyle38),
                                            Text(' دقائق',
                                                style: Styles.textStyle16),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('00',
                                                style: Styles.textStyle38),
                                            Text(' ساعات',
                                                style: Styles.textStyle16),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Icon(
                                            const IconData(
                                              0xe528,
                                              fontFamily: 'MaterialIcons',
                                            ),
                                            color: myColor,
                                          ),
                                        ),
                                        onTap: () {},
                                      ),
                                      const Text(
                                        "مشاركة الأمر",
                                        style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                              title: const Text(
                                                  'AlertDialog Title'),
                                              content: const Text(
                                                  'AlertDialog description'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'Cancel'),
                                                  child: const Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: const Text('OK'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
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
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
              // carousel with custom indicator
              MyCarouselSlider(cubit: cubit),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 57.0,
                      horizontal: 24,
                    ),
                    child: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Transform.rotate(
                                  angle: 3.14,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: my66696AColor,
                                    size: 28,
                                  ))
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Transform.rotate(
                                  angle: 3.14,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                      size: 28,
                                    ),
                                  )),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: my66696AColor,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .55,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                            const Spacer(),
                            Text(
                              'أوامر التنفيذ الحرفي',
                              style: Styles.textStyle14
                                  .copyWith(color: my828282Color),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_right_rounded,
                              size: 40,
                              color: myColor,
                            ),
                            Text(
                              "تصنيف الامر",
                              style: Styles.textStyle16
                                  .copyWith(color: myBlackColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyButton(
                          text: 'تقديم على العرض',
                          onPressed: () {},
                          width: MediaQuery.of(context).size.width * .9,
                          color: myBlackColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
