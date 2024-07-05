import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/inputs/otp_input_text_field.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.otpVerification,
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
        _titleWidget(context),
        _otpMiddleSection(context),
        addVerticalSpace(20.h),
        _timeWidget(context),
        addVerticalSpace(20.h),
        _submitButtonWidget(context),
        addVerticalSpace(20.h),
        _resendWidget(context)
      ],
    );
  }

  _titleWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(Dimensions.marginSize),
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.defaultPaddingSize * 0.5),
              child: Text(Strings.otpVerificationTitle,
                  textAlign: TextAlign.center,
                  style: CustomStyler.otpVerificationDescriptionStyle),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.defaultPaddingSize * 0.5),
              child: Text(Strings.otpVerificationDescription,
                  textAlign: TextAlign.center,
                  style: CustomStyler.otpVerificationDescriptionStyle),
            ),
          ],
        ));
  }

  _otpMiddleSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFieldOtp(),
          TextFieldOtp(),
          TextFieldOtp(),
          TextFieldOtp(),
          TextFieldOtp(),
          TextFieldOtp(),
        ],
      ),
    );
  }

  _timeWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.time,
          style: const TextStyle(color: CustomColor.whiteColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _submitButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.submit,
      onPressed: () {
        Get.toNamed(Routes.resetPasswordScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }

  _resendWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          Strings.didNTGetAnyCode,
          style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
        ),
        GestureDetector(
          onTap: () {
            // Get.toNamed(Routes.signInScreen);
          },
          child: Text(
            Strings.resend,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
        )
      ],
    );
  }
}
