import 'package:awamer/shared/components/components.dart';
import 'package:awamer/shared/style/colors.dart';
import 'package:awamer/shared/style/styles.dart';
import 'package:flutter/material.dart';

class TransferTheAccountToAServiceProviderScreen extends StatelessWidget {
  TransferTheAccountToAServiceProviderScreen({Key? key}) : super(key: key);
  final craftName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context: context, title: "تحويل الحساب الى مقدم خدمة"),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                "اسم الحرفة",
                style: Styles.textStyle16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: myBackgroundColor,
                    filled: true,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.shopping_bag,
                        color: myColor,
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius:
                          BorderRadius.circular(20.0), // Set the border radius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius:
                          BorderRadius.circular(20.0), // Set the border radius
                    ),
                  ),
                ),
              ),
              Text(
                "تفاصيل عن الحرفة",
                style: Styles.textStyle16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 23),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: myBackgroundColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    maxLines: null,
                    autovalidateMode: AutovalidateMode.always,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Text(
                "ارفاق صورة السجل التجاري أو وثيقة العمل الحر",
                style: Styles.textStyle16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: myBackgroundColor,
                    filled: true,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.camera_alt,
                        color: myColor,
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius:
                          BorderRadius.circular(20.0), // Set the border radius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius:
                          BorderRadius.circular(20.0), // Set the border radius
                    ),
                  ),
                ),
              ),
              Text(
                "تاريخ الانتهار",
                style: Styles.textStyle16,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 23),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: myBackgroundColor,
                    filled: true,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.calendar_month,
                        color: myColor,
                      ),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius:
                          BorderRadius.circular(20.0), // Set the border radius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius:
                          BorderRadius.circular(20.0), // Set the border radius
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MyButton(
                  text: "تحويل الحساب الى مقدم خدمة",
                  onPressed: () {},
                  width:MediaQuery.of(context).size.width * .9,
                  color: myBlackColor),
            ],
          ),
        ),
      ),
    );
  }
}
