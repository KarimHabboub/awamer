import 'package:awamer/shared/style/colors.dart';
import 'package:flutter/material.dart';
import '../layout/widget/list_view.dart';

class MyRequests extends StatelessWidget {
  const MyRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: myFCFCFCColor,
            elevation: 0,
            bottom: TabBar(
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
          ),
        ),
        body:  const TabBarView(
          children:<Widget> [
            MyListView(withFavorite: false),
            MyListView(withFavorite: false),
            MyListView(withFavorite: false),
          ],
        ),
      ),
    );
  }
}
