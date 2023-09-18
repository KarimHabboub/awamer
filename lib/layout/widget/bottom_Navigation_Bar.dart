import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import '../../shared/style/colors.dart';
import '../cubit/cubit.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
    required this.cubit,
  });

  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 80,
      iconPadding: 15,
      index: cubit.currentIndex,
      color: myBlackColor,
      buttonBackgroundColor: myBlackColor,
      backgroundColor: Colors.transparent,
      // with in Scaffold--> extendBody: true,
      items: [
        CurvedNavigationBarItem(
            child: Icon(
              Icons.add_box,
              color: cubit.currentIndex == 0 ? myColor : myCFCFCFColor,
            ),
            // تحديد الأيقونة هنا بشكل منفصل
            label: 'اضف امر',
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: cubit.currentIndex == 0 ? myColor : myCFCFCFColor,
            )),
        CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: cubit.currentIndex == 1 ? myColor : myCFCFCFColor,
            ),
            // تحديد الأيقونة هنا بشكل منفصل
            label: 'الرئيسية',
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: cubit.currentIndex == 1 ? myColor : myCFCFCFColor,
            )),
        CurvedNavigationBarItem(
            child: Icon(
              Icons.shopping_bag,
              color: cubit.currentIndex == 2 ? myColor : myCFCFCFColor,
            ),
            // تحديد الأيقونة هنا بشكل منفصل
            label: 'طلباتي',
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: cubit.currentIndex == 2 ? myColor : myCFCFCFColor,
            )),
      ],
      onTap: (index) {
        cubit.changeBottomNavBarItem(index);
      },
      letIndexChange: (index) => true,
    );
  }
}
