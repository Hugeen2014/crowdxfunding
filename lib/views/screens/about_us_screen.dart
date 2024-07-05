import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.aboutUs,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.primaryBackgroundColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _imageWidget(context),
        _aboutUsDescription(context),
        _copyRightWidget(context)
      ],
    );
  }

  _imageWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        Strings.splashLogo,
        width: 200.w,
      ),
    );
  }

  _aboutUsDescription(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          Text(
            Strings.aboutUsPartOne,
            textAlign: TextAlign.justify,
            style: CustomStyler.aboutUsDesStyle,
          ),
          addVerticalSpace(20.h),
          Text(
            Strings.aboutUsPartTwo,
            textAlign: TextAlign.justify,
            style: CustomStyler.aboutUsDesStyle,
          ),
          addVerticalSpace(20.h),
          Text(
            Strings.aboutUsPartThree,
            textAlign: TextAlign.justify,
            style: CustomStyler.aboutUsDesStyle,
          ),
          addVerticalSpace(20.h),
          Text(
            Strings.aboutUsPartFour,
            textAlign: TextAlign.justify,
            style: CustomStyler.aboutUsDesStyle,
          ),
        ],
      ),
    );
  }


  _copyRightWidget(BuildContext context){
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(Strings.copyright, style: CustomStyler.copyrightStyle,),
          Text(Strings.websiteLink, style: CustomStyler.websiteStyle,),
        ],
      )
    );
  }
}
