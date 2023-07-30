import 'package:awamer/modules/order_details/cubit/states.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsStates>{
  OrderDetailsCubit() : super(InitOrderDetailsState());

  static OrderDetailsCubit of(context) => BlocProvider.of(context);
// Slider
  final CarouselController controller = CarouselController();
  int current = 0;
  List<Widget> sliderItem = [
    ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        width: double.infinity,
        fit: BoxFit.contain,
        imageUrl:
        'https://img.freepik.com/free-photo/handsome-carpenter-working-with-wood_1157-26134.jpg?w=900&t=st=1690462383~exp=1690462983~hmac=fe6b87d10b9a6bd2045ca58402959e68989fefc522fb4e70b531c01ddb5efa27',
        errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
      ),
    ),
    ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.contain,
        imageUrl:
        'https://img.freepik.com/free-photo/viking-forges-weapons-swords-smithy-man-warrior-s-clothes-is-smithy_471681-4.jpg?w=996&t=st=1690541264~exp=1690541864~hmac=9159eb8c24fd0cdb6656d1c460d3ab25e876dd99295cfeb4badb7050c150f6ed',
        errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
      ),
    ),
    ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.contain,
        imageUrl:
        'https://img.freepik.com/free-photo/closeup-delivery-man-closing-carboard-box-with-tape-while-preparing-packages-shipment_637285-2244.jpg?w=996&t=st=1690541364~exp=1690541964~hmac=3abd3b5a41fd0ccea2e4e80f5cac70728bc9f8102dfdf038e4e8ae2faf10a933',
        errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
      ),
    ),
    ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.contain,
        imageUrl:"https://img.freepik.com/premium-photo/delivery-man-giving-box-woman-who-ordered-online_23-2148455127.jpg",
        errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
      ),
    ),
    ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        width: double.infinity,
        fit: BoxFit.contain,
        imageUrl:
        'https://img.freepik.com/free-photo/handsome-carpenter-working-with-wood_1157-26134.jpg?w=900&t=st=1690462383~exp=1690462983~hmac=fe6b87d10b9a6bd2045ca58402959e68989fefc522fb4e70b531c01ddb5efa27',
        errorWidget: (context, url, error) =>
        const Center(child: Icon(Icons.error)),
      ),
    ),
  ];
  changeIndexSlider(int index){
    current = index;
    emit(ChangeIndexSliderState());
  }
}