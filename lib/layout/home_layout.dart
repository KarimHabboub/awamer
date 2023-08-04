import 'package:awamer/layout/cubit/cubit.dart';
import 'package:awamer/layout/cubit/states.dart';
import 'package:awamer/layout/widget/bottom_Navigation_Bar.dart';
import 'package:awamer/modules/app_bar_screens/filter.dart';
import 'package:awamer/modules/app_bar_screens/preferable.dart';
import 'package:awamer/modules/drawer_screens/about_the_app.dart';
import 'package:awamer/modules/drawer_screens/connect_with_the_app.dart';
import 'package:awamer/modules/drawer_screens/help_center.dart';
import 'package:awamer/modules/drawer_screens/my_specials.dart';
import 'package:awamer/modules/drawer_screens/portfolio.dart';
import 'package:awamer/modules/drawer_screens/profile.dart';
import 'package:awamer/modules/drawer_screens/settings.dart';
import 'package:awamer/modules/drawer_screens/transfer_the_account_to_a_service_provider.dart';
import 'package:awamer/modules/drawer_screens/transferring_to_a_premium_account.dart';
import 'package:awamer/shared/style/icon_broken.dart';
import 'package:awamer/shared/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../modules/app_bar_screens/notifications.dart';
import '../shared/style/colors.dart';

class HomeLayout extends StatelessWidget {
  HomeLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (BuildContext context, Object? state) {},
      builder: (BuildContext context, state) {
        HomeCubit cubit = HomeCubit.of(context);
        return Scaffold(
          key: _key,
          extendBody: true,
          backgroundColor: myFCFCFCColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        IconBroken.Filter,
                      ),
                      onPressed: () {
                        _key.currentState!.openDrawer();
                      },
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
                              cubit: cubit,
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Preferable()));
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        IconBroken.Notification,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notifications()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: (cubit.screens[cubit.currentIndex]),
          bottomNavigationBar: MyBottomNavBar(cubit: cubit),
          drawer: Drawer(
            backgroundColor: myBlackColor,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Profile(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: my707070Color,
                                  width: 7.0,
                                ),
                              ),
                              child: ClipOval(
                                child: Image.network(
                                  'https://img.freepik.com/free-photo/handsome-young-man-with-arms-crossed-white-background_23-2148222620.jpg?w=740&t=st=1691134889~exp=1691135489~hmac=9d6b32138736e4416cff35ae04621b449a18d007c67044dc0df4a2b227ae33a2',
                                  // رابط الصورة هنا
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "كريم رشيد حبوب",
                              style: Styles.textWhiteStyle16,
                            )
                          ],
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.home,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("الرئيسية",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TransferTheAccountToAServiceProviderScreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.local_activity, size: 30, color: Colors.white),
                              const SizedBox(width: 10),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'تحويل الحساب الى تاجر ',
                                      style: Styles.textWhiteStyle14,
                                    ),
                                    TextSpan(
                                      text: '(مقدم سلعة )',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:myColor, // اللون الأزرق للنص داخل الأقواس
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MySpecialsScreen(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.category,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("العروض الخاصة بي",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TransferringToAPremiumAccountScreen(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.local_activity,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("تحويل الى حساب مميز",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Portfolio(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.wallet,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("المحفظة",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ConnectWithTheApp(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.phone,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("تواصل مع التطبيق ",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Settings(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.settings,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("تعديل بيانات الحساب",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HelpCenter(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.feed,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("مركز المساعدة",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutTheApp(),
                              ),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.error,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("عن التطبيق",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 200,),
                      Padding(
                        padding: const EdgeInsets.only(top:24.0),
                        child: GestureDetector(
                          onTap: (){
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.exit_to_app,size: 30,color: Colors.white,),
                              SizedBox(width: 10),
                              Text("تسجيل الخروج",style: Styles.textWhiteStyle14,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
