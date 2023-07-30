import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../shared/style/colors.dart';
import '../../shared/style/styles.dart';
import '../cubit/cubit.dart';
enum SingingCharacter { lafayette, jefferson }

class BodyShowBottomSheet extends StatelessWidget {
  const BodyShowBottomSheet({
    super.key,
    required this.cubit,
  }) ;
  final HomeCubit cubit;
  final SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .9,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            physics:const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(20),
                        color: myBlackColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  'المدينة',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Expanded(
                              child: Text(
                                cubit.selectedValue ?? '',
                                style: Styles.textStyle16
                                    .copyWith(
                                    color:
                                    myDEDEDEColor),
                                overflow:
                                TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: cubit.items.map((String item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style:
                                const TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow
                                    .ellipsis,
                              ),
                            ))
                            .toList(),
                        value: cubit.selectedValue,
                        onChanged: (String? value) {
                          // setState(() {
                          //   selectedValue = value;
                          // });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 14, right: 14),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: myBlackColor,
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: IconStyleData(
                          icon: Transform.rotate(
                            angle: -3.14 / 2,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                          iconSize: 20,
                          iconEnabledColor: myDEDEDEColor,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData:
                        DropdownStyleData(
                          maxHeight: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            color: myBlackColor,
                          ),
                          offset: const Offset(-20, 0),
                          scrollbarTheme:
                          ScrollbarThemeData(
                            radius:
                            const Radius.circular(40),
                            thickness:
                            MaterialStateProperty.all<
                                double>(6),
                            thumbVisibility:
                            MaterialStateProperty.all<
                                bool>(true),
                          ),
                        ),
                        menuItemStyleData:
                        const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.only(
                              left: 14, right: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'المدينة',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Expanded(
                              child: Text(
                                cubit.selectedValue ?? '',
                                style: Styles.textStyle16
                                    .copyWith(
                                    color:
                                    myDEDEDEColor),
                                overflow:
                                TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: cubit.items.map((String item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style:
                                const TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow
                                    .ellipsis,
                              ),
                            ))
                            .toList(),
                        value: cubit.selectedValue,
                        onChanged: (String? value) {
                          // setState(() {
                          //   selectedValue = value;
                          // });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 14, right: 14),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: myBlackColor,
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: IconStyleData(
                          icon: Transform.rotate(
                            angle: -3.14 / 2,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                          iconSize: 20,
                          iconEnabledColor: myDEDEDEColor,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData:
                        DropdownStyleData(
                          maxHeight: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            color: Colors.grey,
                          ),
                          offset: const Offset(-20, 0),
                          scrollbarTheme:
                          ScrollbarThemeData(
                            radius:
                            const Radius.circular(40),
                            thickness:
                            MaterialStateProperty.all<
                                double>(6),
                            thumbVisibility:
                            MaterialStateProperty.all<
                                bool>(true),
                          ),
                        ),
                        menuItemStyleData:
                        const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.only(
                              left: 14, right: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'المدينة',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Expanded(
                              child: Text(
                                cubit.selectedValue ?? '',
                                style: Styles.textStyle16
                                    .copyWith(
                                    color:
                                    myDEDEDEColor),
                                overflow:
                                TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: cubit.items.map((String item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style:
                                const TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow
                                    .ellipsis,
                              ),
                            ))
                            .toList(),
                        value: cubit.selectedValue,
                        onChanged: (String? value) {
                          // setState(() {
                          //   selectedValue = value;
                          // });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 14, right: 14),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: myBlackColor,
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: IconStyleData(
                          icon: Transform.rotate(
                            angle: -3.14 / 2,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                          iconSize: 20,
                          iconEnabledColor: myDEDEDEColor,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData:
                        DropdownStyleData(
                          maxHeight: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            color: Colors.grey,
                          ),
                          offset: const Offset(-20, 0),
                          scrollbarTheme:
                          ScrollbarThemeData(
                            radius:
                            const Radius.circular(40),
                            thickness:
                            MaterialStateProperty.all<
                                double>(6),
                            thumbVisibility:
                            MaterialStateProperty.all<
                                bool>(true),
                          ),
                        ),
                        menuItemStyleData:
                        const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.only(
                              left: 14, right: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'المدينة',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15),
                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        isExpanded: true,
                        hint: Row(
                          children: [
                            Expanded(
                              child: Text(
                                cubit.selectedValue ?? '',
                                style: Styles.textStyle16
                                    .copyWith(
                                    color:
                                    myDEDEDEColor),
                                overflow:
                                TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: cubit.items.map((String item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style:
                                const TextStyle(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.bold,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow
                                    .ellipsis,
                              ),
                            ))
                            .toList(),
                        value: cubit.selectedValue,
                        onChanged: (String? value) {
                          // setState(() {
                          //   selectedValue = value;
                          // });
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 14, right: 14),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            color: myBlackColor,
                          ),
                          elevation: 2,
                        ),
                        iconStyleData: IconStyleData(
                          icon: Transform.rotate(
                            angle: -3.14 / 2,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ),
                          iconSize: 20,
                          iconEnabledColor: myDEDEDEColor,
                          iconDisabledColor: Colors.grey,
                        ),
                        dropdownStyleData:
                        DropdownStyleData(
                          maxHeight: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(14),
                            color: Colors.grey,
                          ),
                          offset: const Offset(-20, 0),
                          scrollbarTheme:
                          ScrollbarThemeData(
                            radius:
                            const Radius.circular(40),
                            thickness:
                            MaterialStateProperty.all<
                                double>(6),
                            thumbVisibility:
                            MaterialStateProperty.all<
                                bool>(true),
                          ),
                        ),
                        menuItemStyleData:
                        const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.only(
                              left: 14, right: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'نوع الامر',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                const SizedBox(height:20),
                ListTile(
                  title:  Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    focusColor: Colors.red,
                    activeColor: myBlackColor,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                ListTile(
                  title: Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                ListTile(
                  title:  Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    focusColor: Colors.red,
                    activeColor: myBlackColor,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                ListTile(
                  title:  Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    focusColor: Colors.red,
                    activeColor: myBlackColor,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                Text(
                  'نوع الامر',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                const SizedBox(height:20),
                ListTile(
                  title:  Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    focusColor: Colors.red,
                    activeColor: myBlackColor,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                ListTile(
                  title: Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                Text(
                  'نوع الامر',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                const SizedBox(height:20),
                ListTile(
                  title:  Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    focusColor: Colors.red,
                    activeColor: myBlackColor,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                ListTile(
                  title: Text('أوامر التنفيذ الحرفي',style: Styles.textStyle14,),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      // setState(() {
                      //   _character = value;
                      // });
                    },
                  ),
                ),
                Text(
                  'نوع الامر',
                  style: Styles.textStyle16
                      .copyWith(color: myColor),
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 10,
                    thumbColor: myColor,
                    activeTrackColor: myBlackColor,
                  ),
                  child: RangeSlider(
                      values: cubit.selectedRange,
                      min: 25.00,
                      max: 10000.00,
                      labels: RangeLabels(cubit.selectedRange.start.toString(),cubit.selectedRange.end.toString()),
                      onChanged: (RangeValues values){
                        // setState({
                        //   selectedRange = values;
                        // });
                      }
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}