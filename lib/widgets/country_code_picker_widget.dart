import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/strings.dart';

class CountryCodePickerWidget extends StatelessWidget {
  const CountryCodePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
          color: CustomColor.inputBackgroundColor,
          border: Border.all(color: CustomColor.whiteColor, width: 1),
          borderRadius: BorderRadius.circular(Dimensions.radius * 2)),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
      child: const CountryCodePicker(
        showOnlyCountryWhenClosed: true,
        showDropDownButton: true,
        initialSelection: Strings.selectCountry,
        backgroundColor: CustomColor.inputBackgroundColor,
      ),
    );
  }
}
