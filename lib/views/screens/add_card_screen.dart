import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/add_card_controller.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/card_selector_widget.dart';
import 'package:xfunding/widgets/inputs/input_text_field.dart';
import 'package:xfunding/widgets/labels/text_labels_widget.dart';

class AddCardScreen extends StatelessWidget {
  AddCardScreen({super.key});

  final _controller = Get.put(AddCardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.adDCard,
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
        _cardSelectorWidget(context),
        _cardDetailsWidget(context),
        _saveChangeWidget(context)
      ],
    );
  }

  _cardSelectorWidget(BuildContext context) {
    return Column(
      children: [
        TextLabelsWidget(
          textLabels: Strings.selectCardType,
        ),
        const CardSelectorWidget(),
      ],
    );
  }

  _cardDetailsWidget(BuildContext context) {
    return Column(
      children: [
        TextLabelsWidget(
          textLabels: Strings.cardDetails,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
          child: _inputFieldWidget(context),
        )
      ],
    );
  }

  _inputFieldWidget(BuildContext context) {
    return Form(
      key: _controller.formKey,
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
            child: InputTextField(
              hintText: Strings.nameOfCard,
              iconData: Icons.account_circle,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.nameOfCardController,
            ),
          ),
          addVerticalSpace(20.h),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
            child: InputTextField(
              hintText: Strings.cardNUmber,
              iconData: FontAwesomeIcons.ccVisa,
              hintTextColor: CustomColor.whiteColor,
              backgroundColor: CustomColor.inputBackgroundColor,
              controller: _controller.cardNumberController,
            ),
          ),
          addVerticalSpace(20.h),
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
            child: Row(
              mainAxisAlignment: mainSpaceBet,
              children: [
                Flexible(
                  child: InputTextField(
                    hintText: Strings.mY,
                    iconData: Icons.calendar_today,
                    hintTextColor: CustomColor.whiteColor,
                    backgroundColor: CustomColor.inputBackgroundColor,
                    controller: _controller.expiryDateController,
                  ),
                ),
                addHorizontalSpace(10.w),
                Flexible(
                  child: InputTextField(
                    hintText: Strings.cvc,
                    iconData: Icons.credit_card,
                    hintTextColor: CustomColor.whiteColor,
                    backgroundColor: CustomColor.inputBackgroundColor,
                    controller: _controller.cvcController,
                  ),
                ),
              ],
            ),
          ),
          addVerticalSpace(20.h),
        ],
      ),
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
