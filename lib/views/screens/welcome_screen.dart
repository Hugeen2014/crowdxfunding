import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/language_selector_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: ListView(
        children: [
          addVerticalSpace(80.h),
          _imageWidget(context),
          addVerticalSpace(40.h),
          _titleAndDescriptionWidget(context),
          addVerticalSpace(60.h),
          _selectLanguageWidget(context),
          addVerticalSpace(20.h),
          _buttonWidget(context),
        ],
      ),
    );
  }

  _imageWidget(BuildContext context) {
    return Center(
      child: Image.asset(
        Strings.splashLogo,
        width: 300.w,
      ),
    );
  }

  _titleAndDescriptionWidget(BuildContext context) {
    return Column(
      children: [
        Text(
          Strings.welcomeTitle,
          style: CustomStyler.welcomeTitleStyle,
        ),
        Text(
          Strings.welcomeDescription,
          style: CustomStyler.welcomeDescriptionStyle,
        ),
      ],
    );
  }

  _selectLanguageWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        addVerticalSpace(20.h),
        Container(
            margin: EdgeInsets.symmetric(
              horizontal: Dimensions.marginSize,
            ),
            child: Text(
              Strings.selectYourLanguage,
              style: CustomStyler.selectLanguageStyle,
            )),
        addVerticalSpace(5.h),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: Dimensions.marginSize,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: CustomColor.secondaryColor,
              border: Border.all(color: CustomColor.secondaryColor)),
          child: LanguageSelectorWidget(),
        ),
        addVerticalSpace(80.h),
      ],
    );
  }

  _buttonWidget(BuildContext context) {
    return Column(
      children: [
        PrimaryButtonWidget(
          title: Strings.signIn,
          onPressed: () {
            Get.toNamed(Routes.signInScreen);
          },
          borderColor: CustomColor.primaryColor,
          backgroundColor: CustomColor.primaryColor,
          textColor: CustomColor.whiteColor,
        ),
        PrimaryButtonWidget(
          title: Strings.signUp,
          onPressed: () {
            Get.toNamed(Routes.signUpScreen);
          },
          borderColor: CustomColor.primaryColor,
          backgroundColor: CustomColor.primaryBackgroundColor,
          textColor: CustomColor.primaryColor,
        ),
      ],
    );
  }
}
