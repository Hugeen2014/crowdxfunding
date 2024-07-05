import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class CardSelectorWidget extends StatefulWidget {
  const CardSelectorWidget({Key? key}) : super(key: key);

  @override
  State<CardSelectorWidget> createState() => _CardSelectorWidgetState();
}

class _CardSelectorWidgetState extends State<CardSelectorWidget> {
  int selectedIndex = 0;
  int cardSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
      child: Row(
        children: [
          _selectCardTypeContainerWidget(
              context, FontAwesomeIcons.ccVisa, Strings.visaCard, 0),
          _selectCardTypeContainerWidget(
              context, FontAwesomeIcons.ccMastercard, Strings.masterCard, 1),
        ],
      ),
    );
  }

  _selectCardTypeContainerWidget(
      BuildContext context, IconData icon, String cardName, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        width: 60.w,
        height: 70.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: CustomColor.inputBackgroundColor,
            border: Border.all(
                color: selectedIndex == index
                    ? CustomColor.whiteColor
                    : Colors.transparent,
                width: 1)),
        margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
        padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
        child: Column(
          crossAxisAlignment: crossCenter,
          children: [
            Icon(
              icon,
              color: CustomColor.whiteColor,
            ),
            addVerticalSpace(10.h),
            Text(
              cardName,
              style: CustomStyler.visaCardExpiryStyle,
            )
          ],
        ),
      ),
    );
  }
}
