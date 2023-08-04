import 'package:awamer/shared/components/my_order_details/widgets/my_order_details_part1.dart';
import 'package:flutter/material.dart';
import '../../../modules/order_details/cubit/cubit.dart';
import '../../../modules/order_details/widget/submit_on_offer.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          MyOrderDetailsPart1(cubit: cubit),
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
                              const Icon(
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
                              const Icon(
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
                              const Icon(
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
                                "تصنيف الامر",
                                style: Styles.textStyle16.copyWith(
                                  color: myBlackColor,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'أوامر التنفيذ الحرفي',
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
                                "تصنيف الامر",
                                style: Styles.textStyle16.copyWith(
                                  color: myBlackColor,
                                ),
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
                              const Icon(
                                Icons.arrow_right_rounded,
                                size: 40,
                                color: myColor,
                              ),
                              Text(
                                "تصنيف الامر",
                                style: Styles.textStyle16.copyWith(
                                  color: myBlackColor,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'أوامر التنفيذ الحرفي',
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
                              const Icon(
                                Icons.arrow_right_rounded,
                                size: 40,
                                color: myColor,
                              ),
                              Text(
                                "تصنيف الامر",
                                style: Styles.textStyle16.copyWith(
                                  color: myBlackColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          MyButton(
                            text: 'تقديم على العرض',
                            onPressed: () {
                              showBottomSheetSubmitOnOffer(context);
                            },
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
      ),
    );
  }
}
