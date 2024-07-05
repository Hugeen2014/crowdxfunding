import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/reset_password_controller.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/inputs/password_input_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  final _controller = Get.put(ResetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        appBar: AppBar(
          backgroundColor: CustomColor.primaryBackgroundColor,
          elevation: 0,
          automaticallyImplyLeading: false,

          title: Text(
            Strings.resetPassword,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
        ),
        body: _bodyWidget(context));
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _titleWidget(context),
        _inputFieldWidget(context),
        _submitButtonWidget(context),
      ],
    );
  }

  _titleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultPaddingSize * 0.5),
        child: Text(Strings.resetPasswordTitle,
            textAlign: TextAlign.center,
            style: CustomStyler.otpVerificationDescriptionStyle),
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Column(
        children: [
          addVerticalSpace(40.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: PasswordInputTextField(
              hintText: Strings.newPassword,
              controller: _controller.newPasswordController,
            ),
          ),
          addVerticalSpace(20.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: PasswordInputTextField(
              hintText: Strings.confirmNewPassword,
              controller: _controller.confirmNewPasswordController,
            ),
          ),
          addVerticalSpace(15.h),
        ],
      ),
    );
  }

  _submitButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.resetPassword,
      onPressed: () {
        Get.toNamed(Routes.resetPasswordCongratulationsScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
