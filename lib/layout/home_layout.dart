import 'package:awamer/layout/cubit/cubit.dart';
import 'package:awamer/layout/cubit/states.dart';
import 'package:awamer/layout/widget/bottom_Navigation_Bar.dart';
import 'package:awamer/modules/app_bar_screens/filter.dart';
import 'package:awamer/modules/app_bar_screens/preferable.dart';
import 'package:awamer/shared/style/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../modules/app_bar_screens/notifications.dart';
import '../shared/style/colors.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (BuildContext context, Object? state) {},
      builder: (BuildContext context, state) {
        HomeCubit cubit = HomeCubit.of(context);
        return Scaffold(
          extendBody: true,
          backgroundColor: myFCFCFCColor,
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        IconBroken.Filter,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        IconBroken.Filter_2,
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        )),
                          builder: (BuildContext context) {
                            return Filter(
                              cubit:cubit,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                  height: 25,
                  child: Image(
                    image: AssetImage("assets/login/logo.png"),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        IconBroken.Heart,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Preferable()));
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        IconBroken.Notification,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Notifications()),);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: (cubit.screens[cubit.currentIndex]),
          bottomNavigationBar: MyBottomNavBar(cubit: cubit),
        );
      },
    );
  }
}


