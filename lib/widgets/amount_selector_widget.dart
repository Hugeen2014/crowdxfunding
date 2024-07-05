import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';

class AmountSelectorWidget extends StatelessWidget {
  const AmountSelectorWidget({Key? key, required this.dollar}) : super(key: key);

  final String dollar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.w,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5, vertical: Dimensions.marginSize * 0.2),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: CustomColor.primaryColor)
      ),
      child: Text(dollar, style: CustomStyler.amountSelectorStyle,),
    );
  }
}
