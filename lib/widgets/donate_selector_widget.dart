import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';

class DonateSelectorWidget extends StatefulWidget {
  const DonateSelectorWidget({super.key});

  @override
  State<DonateSelectorWidget> createState() => _DonateSelectorWidgetState();
}

class _DonateSelectorWidgetState extends State<DonateSelectorWidget> {
  int selectedIndex = 0;
  int cardSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _amountSelectorMultipleWidget(context),
      ],
    );
  }

  _amountSelectorMultipleWidget(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            _amountSelectorWidget(context, "\$5", 0),
            _amountSelectorWidget(context, "\$10", 1),
            _amountSelectorWidget(context, "\$20", 2),
            _amountSelectorWidget(context, "\$50", 3),
          ],
        ),
        Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            _amountSelectorWidget(context, "\$100", 4),
            _amountSelectorWidget(context, "\$120", 5),
            _amountSelectorWidget(context, "\$150", 6),
            _amountSelectorWidget(context, "\$200", 7),
          ],
        ),
      ],
    );
  }

  _amountSelectorWidget(BuildContext context, String amount, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 75.w,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
            horizontal: Dimensions.marginSize * 0.5,
            vertical: Dimensions.marginSize * 0.2),
        padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: selectedIndex == index
                ? CustomColor.primaryColor
                : CustomColor.primaryBackgroundColor,
            border: Border.all(color: CustomColor.primaryColor)),
        child: Text(
          amount,
          style: TextStyle(
            color: selectedIndex == index
                ? CustomColor.whiteColor
                : CustomColor.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
