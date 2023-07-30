import 'package:awamer/modules/order_details/cubit/cubit.dart';
import 'package:awamer/modules/order_details/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/my_order_details/my_order_details_screen.dart';

class CurrentOrderDetails extends StatelessWidget {
  const CurrentOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OrderDetailsCubit(),
      child: BlocConsumer<OrderDetailsCubit, OrderDetailsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          OrderDetailsCubit cubit = OrderDetailsCubit.of(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: MyOrderDetailsScreen(cubit: cubit),
          );
        },
      ),
    );
  }
}


