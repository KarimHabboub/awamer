import 'package:awamer/layout/cubit/cubit.dart';
import 'package:awamer/layout/cubit/states.dart';
import 'package:awamer/layout/widget/list_view.dart';
import 'package:awamer/shared/style/colors.dart';
import 'package:awamer/shared/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/widget/body_show_bottom_sheet.dart';
import '../../shared/style/icon_broken.dart';

class Preferable extends StatelessWidget {
  const Preferable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        HomeCubit cubit = HomeCubit.of(context);
        return Scaffold(
          backgroundColor: myFCFCFCColor,
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
                        return BodyShowBottomSheet(
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
                  child: Text(
                    'المفضلة',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle16,
                  ),
                ),
              ],
            ),
          ),
          body: const Column(
            children: [
              SizedBox(height: 22),
              Expanded(child: MyListView()),
            ],
          ),
        );
      },
    );
  }
}
