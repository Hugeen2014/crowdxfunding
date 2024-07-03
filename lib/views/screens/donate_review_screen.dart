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

class DonateReviewScreen extends StatelessWidget {
  const DonateReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.review,
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
        _foundationNameWidget(context),
        _amountWidget(context),
        _messageWidget(context),
        _paymentMethod(context),
        _confirmButtonWidget(context)
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

  _foundationNameWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.foundation,
            style: CustomStyler.foundationStyle,
          ),
          Text(
            Strings.foundationName,
            style: CustomStyler.foundationNameStyle,
          )
        ],
      ),
    );
  }

  _amountWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.amount,
            style: CustomStyler.foundationStyle,
          ),
          Text(
            Strings.foundationAmount,
            style: CustomStyler.foundationNameStyle,
          )
        ],
      ),
    );
  }

  _messageWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Text(
            Strings.message,
            style: CustomStyler.foundationStyle,
          ),
          addVerticalSpace(5.h),
          Text(
            Strings.descriptionDetailsOne,
            textAlign: TextAlign.start,
            style: CustomStyler.foundationNameStyle,
          )
        ],
      ),
    );
  }

  _paymentMethod(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.4),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.paymentMethod,
            style: CustomStyler.foundationStyle,
          ),
          Text(
            Strings.myWallet,
            style: CustomStyler.foundationNameStyle,
          )
        ],
      ),
    );
  }

  _confirmButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.confirm,
      onPressed: () {
        Get.toNamed(Routes.donateSuccessScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
