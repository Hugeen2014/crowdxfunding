import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/change_language_controller.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';

class ChangeLanguageScreen extends StatelessWidget {
  ChangeLanguageScreen({super.key});

  final _controller = Get.put(ChangeLanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.changeLanguage,
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
        _changeLanguageWidget(context),
        _saveChangeButtonWidget(context)
      ],
    );
  }

  _changeLanguageWidget(BuildContext context) {
    return Column(
      children: [
        _selectLanguageWidget(
          context,
          Strings.arabicImage,
          Strings.arabic,
          Strings.arabic,
        ),
        _selectLanguageWidget(
          context,
          Strings.frenchImage,
          Strings.bangla,
          Strings.bangla,
        ),
        _selectLanguageWidget(
          context,
          Strings.englishImage,
          Strings.english,
          Strings.english,
        ),
        _selectLanguageWidget(
          context,
          Strings.germanImage,
          Strings.german,
          Strings.german,
        ),
      ],
    );
  }

  _saveChangeButtonWidget(BuildContext context) {
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

  _selectLanguageWidget(
      BuildContext context, String image, String name, String buttonIndex) {
    return Container(
      height: Dimensions.heightSize * 6.h,
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.5),
      decoration: BoxDecoration(
          color: CustomColor.inputBackgroundColor,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: CustomColor.whiteColor, width: 1)),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Row(
            children: [
              Image.asset(image),
              addHorizontalSpace(10.w),
              Text(
                name,
                style: CustomStyler.languageNmeStyle,
              ),
            ],
          ),
          Obx(
            () => Radio(
              activeColor: CustomColor.primaryColor,
              hoverColor: CustomColor.primaryColor,
              value: buttonIndex,
              groupValue: _controller.selectedLanguage.value,
              onChanged: (value) {
                _controller.onChangeLanguage(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
