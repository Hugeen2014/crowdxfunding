import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/sign_up_controller.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/country_code_picker_widget.dart';
import 'package:xfunding/widgets/inputs/input_text_field.dart';
import 'package:xfunding/widgets/inputs/password_input_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _backButtonWidget(context),
        _titleAndDescriptionWidget(context),
        _inputFieldWidget(context),
        _signUpButtonWidget(context),
        addVerticalSpace(20.h),
        _signInNowWidget(context),
        _bottomImageWidget(context),
      ],
    );
  }

  _backButtonWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Dimensions.heightSize * 15.h,
          alignment: Alignment.topLeft,
          child: Image.asset(Strings.upperBg),
        ),
        Positioned(
          left: 18,
          top: 40,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              maxRadius: 20,
              backgroundColor:
                  CustomColor.primaryBackgroundColor.withOpacity(0.6),
              child: const Icon(
                Icons.arrow_back_ios,
                color: CustomColor.whiteColor,
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
            left: 80,
            top: 50,
            child: Text(
              Strings.signUp,
              style: CustomStyler.signInStyle,
            ))
      ],
    );
  }

  _titleAndDescriptionWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize),
      child: Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossStart,
        children: [
          Text(
            Strings.signUpTitle,
            style: CustomStyler.welcomeTitleStyle,
          ),
          Text(
            Strings.signUpDescription,
            style: CustomStyler.welcomeDescriptionStyle,
          )
        ],
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),

        child: Column(
          children: [
            InputTextField(
              hintText: Strings.userName,
              iconData: Icons.account_circle,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.userNameController,
            ),
            addVerticalSpace(20.h),
            InputTextField(
              hintText: Strings.email,
              iconData: Icons.email,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.emailController,
            ),
            addVerticalSpace(20.h),
            InputTextField(
              hintText: Strings.phoneNumber,
              iconData: Icons.call,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.phoneNumberController,
            ),
            addVerticalSpace(20.h),
            PasswordInputTextField(
              hintText: Strings.password,
              controller: _controller.passwordController,
            ),
            addVerticalSpace(20.h),
            Row(
              mainAxisAlignment: mainSpaceBet,
              children: [
                const Flexible(
                  child: CountryCodePickerWidget()
                ),
                addHorizontalSpace(10.w),
                Flexible(
                  child: InputTextField(
                    hintText: Strings.city,
                    iconData: Icons.location_city,
                    hintTextColor: CustomColor.whiteColor,
                    backgroundColor: CustomColor.inputBackgroundColor,
                    controller: _controller.cityController,
                  ),
                ),
              ],
            ),
            addVerticalSpace(20.h),
            Row(
              mainAxisAlignment: mainSpaceBet,
              children: [
                Flexible(
                  child: InputTextField(
                    hintText: Strings.street,
                    iconData: FontAwesomeIcons.streetView,
                    hintTextColor: CustomColor.whiteColor,
                    backgroundColor: CustomColor.inputBackgroundColor,
                    controller: _controller.streetController,
                  ),
                ),
                addHorizontalSpace(10.w),
                Flexible(
                  child: InputTextField(
                    hintText: Strings.code,
                    iconData: Icons.vpn_key,
                    hintTextColor: CustomColor.whiteColor,
                    backgroundColor: CustomColor.inputBackgroundColor,
                    controller: _controller.cityController,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

_signUpButtonWidget(BuildContext context) {
  return PrimaryButtonWidget(
    title: Strings.signUp,
    onPressed: () {
      Get.toNamed(Routes.emailVerificationScreen);
    },
    borderColor: CustomColor.primaryColor,
    backgroundColor: CustomColor.primaryColor,
    textColor: CustomColor.whiteColor,
  );
}

_signInNowWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        Strings.alreadyHaveAnAccount,
        style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
      ),
      GestureDetector(
        onTap: () {
          Get.toNamed(Routes.signInScreen);
        },
        child: const Text(
          Strings.signIn,
          style: TextStyle(color: CustomColor.whiteColor),
        ),
      )
    ],
  );
}

_bottomImageWidget(BuildContext context) {
  return Container(
    height: Dimensions.heightSize * 15.h,
    alignment: Alignment.bottomRight,
    child: Image.asset(Strings.downBg),
  );
}
