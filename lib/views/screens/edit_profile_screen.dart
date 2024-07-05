import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/edit_profile_controller.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/country_code_picker_widget.dart';
import 'package:xfunding/widgets/inputs/input_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  final _controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.editProfile,
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
        _profilePictureWidget(context),
        _inputFieldWidget(context),
        _saveChangeWidget(context),
      ],
    );
  }

  _profilePictureWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
      child: const Center(
        child: CircleAvatar(
          radius: 60,
          backgroundColor: CustomColor.inputBackgroundColor,
          child: CircleAvatar(
            radius: 59,
            backgroundColor: CustomColor.primaryBackgroundColor,
            backgroundImage: AssetImage(Strings.profileImage),
            child: Stack(children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: CustomColor.primaryBackgroundColor,
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: CustomColor.primaryBackgroundColor,
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: CustomColor.whiteColor,
                        size: 15,
                      ),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
        child: Column(
          children: [
            addVerticalSpace(40.h),
            InputTextField(
              hintText: Strings.profileName,
              iconData: Icons.account_circle,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.nameController,
            ),
            addVerticalSpace(20.h),
            InputTextField(
              hintText: Strings.editProfileEmail,
              iconData: Icons.email,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.emailController,
            ),
            addVerticalSpace(20.h),
            InputTextField(
              hintText: Strings.editProfilePhoneNumber,
              iconData: Icons.call,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.phoneController,
            ),
            addVerticalSpace(20.h),
            Row(
              mainAxisAlignment: mainSpaceBet,
              children: [
                const Flexible(
                  child: CountryCodePickerWidget(),
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

  _saveChangeWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.saveChange,
      onPressed: () {
        Get.back();
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
