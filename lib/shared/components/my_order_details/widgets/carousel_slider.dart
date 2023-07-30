import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../modules/order_details/cubit/cubit.dart';
import '../../../style/colors.dart';

class MyCarouselSlider extends StatelessWidget {
  const MyCarouselSlider({
    super.key,
    required this.cubit,
  });

  final OrderDetailsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .30,
          width: double.infinity,
          child: CarouselSlider(
            items: cubit.sliderItem,
            carouselController: cubit.controller,
            options: CarouselOptions(
                height:
                MediaQuery.of(context).size.height * .30,
                initialPage: 0,
                viewportFraction: 1,
                enableInfiniteScroll: true,
                autoPlay: false,
                reverse: false,
                scrollDirection: Axis.horizontal,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration:
                const Duration(seconds: 1),
                onPageChanged: (index, reason) {
                  cubit.changeIndexSlider(index);
                }),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:
            cubit.sliderItem.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () =>
                    cubit.controller.animateToPage(entry.key),
                child: Container(
                  width:
                  cubit.current == entry.key ? 10 : 8.0,
                  height:
                  cubit.current == entry.key ? 10 : 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cubit.current == entry.key
                        ? myColor
                        : my929292Color,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}