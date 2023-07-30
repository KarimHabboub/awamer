import 'package:awamer/layout/cubit/states.dart';
import 'package:awamer/modules/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/add_order.dart';
import '../../modules/my_requests.dart';
class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(InitHomeState());

  static HomeCubit of(context) => BlocProvider.of(context);



  //showBottomSheet
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
  var selectedRange = const RangeValues(5000.00, 10000);


  // bottomNavBar
  int currentIndex = 1;
  List<Widget> screens = [
    const AddOrder(),
    const Home(),
    const MyRequests(),
  ];

  void changeBottomNavBarItem(int index){
    currentIndex = index;
    emit(ChangeBottomNavBarItemState());
  }
}