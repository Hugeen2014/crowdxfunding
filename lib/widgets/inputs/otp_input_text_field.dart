import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';

class TextFieldOtp extends StatelessWidget {
  const TextFieldOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 50.w,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextFormField(
          readOnly: false,
          showCursor: false,
          onChanged: (value) {},
          textAlign: TextAlign.center,
          style: CustomStyler.textFieldLableStyle,
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide:
                  const BorderSide(color: CustomColor.whiteColor, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide:
                  const BorderSide(color: CustomColor.whiteColor, width: 0.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              borderSide: const BorderSide(color: Colors.red, width: 0.5),
            ),
            filled: true,
            fillColor: CustomColor.inputBackgroundColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: Dimensions.defaultPaddingSize,
                vertical: Dimensions.defaultPaddingSize),
          ),
        ),
      ),
    );
  }
}
