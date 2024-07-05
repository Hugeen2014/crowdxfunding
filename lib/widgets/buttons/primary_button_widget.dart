import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/dimsensions.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const PrimaryButtonWidget(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.backgroundColor,
      required this.borderColor,
        required this.textColor,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.buttonHeight,
      margin: EdgeInsets.only(left: Dimensions.marginSize, right: Dimensions.marginSize, top: Dimensions.marginSize),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              side: BorderSide(width: 1, color: borderColor)),
        ),
        child: Text(
          title,
          style: TextStyle(
              color: textColor,
              fontSize: Dimensions.largeTextSize,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
