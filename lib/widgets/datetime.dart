import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

// ignore: must_be_immutable
class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({
    super.key,
  });

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  DateTime date = DateTime(2022, 12, 24);
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: CustomColor.inputBackgroundColor,
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
          border: Border.all(color: CustomColor.whiteColor)),
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultPaddingSize * 0.4),
      child: Row(
        mainAxisAlignment: mainStart,
        children: [
          InkWell(
            onTap: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime(1900),
                lastDate: DateTime(2023),
              );

              if (newDate == null) return;
              setState(() {
                date = newDate;
                isEmpty = !isEmpty;
              });
              // Get.to(() => date = newDate);
            },
            child: const Icon(
              Icons.calendar_today,
              color: CustomColor.whiteColor,
            ),
          ),
          addHorizontalSpace(10.w),
          Text(
            isEmpty ? Strings.dMy : '${date.day}/${date.month}/${date.year}',
            style: CustomStyler.textFieldLableStyle,
          ),
        ],
      ),
    );
  }
}