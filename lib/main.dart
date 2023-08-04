import 'package:awamer/layout/cubit/cubit.dart';
import 'package:awamer/shared/bloc_observer.dart';
import 'package:awamer/shared/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'layout/home_layout.dart';
import 'modules/auth/forgot_your_password.dart';
import 'modules/auth/login.dart';
import 'modules/auth/splash_screen.dart';
import 'modules/auth/verification.dart';
import 'modules/order_details/current_order_details.dart';
import 'modules/app_bar_screens/filter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // خلفية شريط الحالة على الأندرويد
      statusBarIconBrightness: Brightness.dark,
      // الأيقونات الموجودة في شريط الحالة على الأندرويد
      statusBarBrightness:
          Brightness.dark, // الأيقونات الموجودة في شريط الحالة على الآيفون
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => HomeCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: const [
          Locale("ar"),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale("ar"),
        theme: ThemeData(
            colorSchemeSeed: Colors.white,

            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 1.2,
                shadowColor: Colors.grey,
                iconTheme: IconThemeData(color: Colors.black, size: 30))),
        home: HomeLayout(),
      ),
    );
  }
}
