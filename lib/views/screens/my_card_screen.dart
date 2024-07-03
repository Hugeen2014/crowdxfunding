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

class MyCardScreen extends StatelessWidget {
  const MyCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.myCards,
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
        _cardWidget(context),
        addVerticalSpace(20.h),
        _addCard(context)
      ],
    );
  }

  _cardWidget(BuildContext context) {
    return Container(
      height: 280.h,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Strings.cardImage),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultPaddingSize * 1.7,
          vertical: Dimensions.defaultPaddingSize),
      child: Column(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossStart,
        children: [
          Text(
            Strings.visaCard,
            style: CustomStyler.visaCardStyle,
          ),
          addVerticalSpace(20.h),
          Text(
            Strings.visaCardNumber,
            style: CustomStyler.visaCardNumberStyle,
          ),
          Column(
            mainAxisAlignment: mainStart,
            crossAxisAlignment: crossStart,
            children: [
              Text(
                Strings.profileName,
                style: CustomStyler.visaCardNameStyle,
              ),
              addVerticalSpace(10.h),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Text(
                        Strings.expiryDate,
                        style: CustomStyler.visaCardExpiryStyle,
                      ),
                      Text(
                        Strings.expiryDateToday,
                        style: CustomStyler.visaCardExpiryDateStyle,
                      ),
                    ],
                  ),
                  addHorizontalSpace(10.w),
                  Column(
                    crossAxisAlignment: crossCenter,
                    children: [
                      Text(
                        Strings.cvc,
                        style: CustomStyler.visaCardExpiryStyle,
                      ),
                      Text(
                        Strings.cvcNumber,
                        style: CustomStyler.visaCardExpiryDateStyle,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  _addCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.addCardScreen);
      },
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: CustomColor.appBarColor),
        margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
        padding: EdgeInsets.all(Dimensions.marginSize * 0.3),
        child: Row(
          mainAxisAlignment: mainCenter,
          children: [
            const Icon(
              Icons.add_circle,
              color: CustomColor.whiteColor,
            ),
            addHorizontalSpace(10.w),
            Text(
              Strings.adDCard,
              style: CustomStyler.addCardStyle,
            )
          ],
        ),
      ),
    );
  }
}
