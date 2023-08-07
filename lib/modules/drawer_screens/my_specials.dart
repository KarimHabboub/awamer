import 'package:flutter/material.dart';

import '../../layout/cubit/cubit.dart';
import '../../layout/widget/list_view.dart';
import '../../shared/style/colors.dart';
import '../../shared/style/icon_broken.dart';
import '../../shared/style/styles.dart';
import '../app_bar_screens/filter.dart';

class MySpecialsScreen extends StatelessWidget {
  const MySpecialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = HomeCubit.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.grey,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 21,
                  color: Colors.black,
                ), // أيقونة مخصصة للـ "pop"
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        )),
                    builder: (BuildContext context) {
                      return Filter(
                        cubit: cubit,
                      );
                    },
                  );
                },
                icon: const Icon(
                  IconBroken.Filter_2,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Text(
                  'العروض الخاصة بي',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle16,
                ),
              ),
            ],
          ),
        ),
        body:  Column(
          children: [
            TabBar(
              isScrollable: true,
              labelColor: myBlackColor,
              indicatorColor: myColor,
              unselectedLabelColor: my828282Color,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              tabs: const [
                Tab(
                  text: "طلبات تحت المزاد",
                ),
                Tab(
                  text: "طلبات منتهية",
                ),
                Tab(
                  text: "طلبات  قيد التنفيذ",
                ),
              ],
            ),
            Expanded(
              child: const TabBarView(
                children:<Widget> [
                  MyListView(),
                  MyListView(withFavorite: false),
                  MyListView(withFavorite: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
