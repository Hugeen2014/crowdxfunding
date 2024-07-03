import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/donate_controller.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/donate_selector_widget.dart';
import 'package:xfunding/widgets/inputs/description_input_text_field_widget.dart';
import 'package:xfunding/widgets/inputs/input_text_field.dart';
import 'package:xfunding/widgets/labels/text_labels_widget.dart';
import 'package:xfunding/widgets/donate_payment_method_selector_widget.dart';

class DonateScreen extends StatelessWidget {
  DonateScreen({super.key});
  final _controller = Get.put(DonateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.donate,
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
        _headerContainer(context),
        _amountWidget(context),
        _amountSelectorWidget(context),
        _messageWidget(context),
        DonatePaymentMethodSelectorWidget(),
        _addCardWidget(context),
        _proceedButtonWidget(context),
      ],
    );
  }

  _headerContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      decoration: BoxDecoration(
        color: const Color(0xFF310D00),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Image.asset(
              Strings.headerImage,
              width: 100.w,
            ),
          ),
          Column(
            crossAxisAlignment: crossStart,
            children: [
              Text(
                Strings.education,
                style: CustomStyler.educationStyle,
              ),
              Text(
                Strings.donateForEducation,
                style: CustomStyler.donateTitleStyle,
              ),
            ],
          )
        ],
      ),
    );
  }

  _amountWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.amount,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: InputTextField(
            hintText: Strings.amount,
            iconData: Icons.attach_money,
            hintTextColor: CustomColor.whiteColor,
            backgroundColor: CustomColor.inputBackgroundColor,
            controller: _controller.amountController,
          ),
        ),
        addVerticalSpace(10.h),
      ],
    );
  }

  _amountSelectorWidget(BuildContext context) {
    return const DonateSelectorWidget();
  }

  _messageWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        TextLabelsWidget(
          textLabels: Strings.message,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: DescriptionInputTextFieldWidget(
            hintText: Strings.optional,
            maxLine: 4,
            hintTextColor: CustomColor.whiteColor,
            backgroundColor: CustomColor.inputBackgroundColor,
            controller: _controller.messageController,
          ),
        ),
        addVerticalSpace(10.h),
      ],
    );
  }

  _addCardWidget(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.addCardScreen);
        },
        child: Text(
          Strings.addCard,
          style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
        ),
      ),
    );
  }

  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.toNamed(Routes.donateReviewScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
