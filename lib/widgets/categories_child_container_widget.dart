import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/slider_widget.dart';

class CategoriesChildContainerWidget extends StatelessWidget {
  const CategoriesChildContainerWidget(
      {super.key,
      required this.image,
      required this.onPressed,
      required this.title,
      required this.foundationNameTitle,
      required this.foundationNameSubTitle,
      required this.totalDonatedMoney,
      required this.donateDaysLeft,
      required this.totalDonatedPercentage,
      required this.totalDonatedGoal});

  final String image;
  final VoidCallback onPressed;
  final String title;
  final String foundationNameTitle;
  final String foundationNameSubTitle;
  final String totalDonatedMoney;
  final String donateDaysLeft;
  final String totalDonatedPercentage;
  final String totalDonatedGoal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      decoration: BoxDecoration(
        color: const Color(0xFF310D00),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          _imageContainerWidget(context),
          addHorizontalSpace(10.w),
          Column(
            crossAxisAlignment: crossStart,
            children: [
              Column(
                mainAxisAlignment: mainStart,
                crossAxisAlignment: crossStart,
                children: [
                  _containerTitle(context),
                  addVerticalSpace(5.h),
                  _fundraisingContainerWidget(context),
                ],
              ),
              addVerticalSpace(5.h),
              _detailsWidget(context),
            ],
          )
        ],
      ),
    );
  }

  _detailsWidget(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Column(
        crossAxisAlignment: crossEnd,
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  totalDonatedMoney,
                  maxLines: 2,
                  style: CustomStyler.bigContainerSmallStyle,
                ),
              ),
              Text(
                donateDaysLeft,
                maxLines: 2,
                style: CustomStyler.bigContainerSmallStyle,
              ),
            ],
          ),
          addVerticalSpace(5.h),
          SizedBox(
            height: 5.h,
            child: const SliderWidget(),
          ),
          addVerticalSpace(5.h),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Text(
                totalDonatedPercentage,
                maxLines: 2,
                style: CustomStyler.bigContainerSmallStyle,
              ),
              Row(
                children: [
                  Text(
                    Strings.goal,
                    maxLines: 2,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                  Text(
                    totalDonatedGoal,
                    maxLines: 2,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _imageContainerWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.transparent.withOpacity(0.5), BlendMode.dstATop),
                image: ExactAssetImage(image),
                fit: BoxFit.cover),
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: onPressed,
              child: Container(
                padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: CustomColor.primaryColor.withOpacity(0.6),
                ),
                child: Text(
                  Strings.donateNow,
                  style: const TextStyle(
                      color: CustomColor.whiteColor, fontSize: 8),
                ),
              ),
            ),
          )),
    );
  }

  _containerTitle(BuildContext context) {
    return Text(
      title,
      style: CustomStyler.nigerianMedicalDevTitleStyle,
    );
  }

  _fundraisingContainerWidget(BuildContext context) {
    return SizedBox(
      height: 25.h,
      child: Row(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossStart,
        children: [
          Image.asset(Strings.notificationImage),
          addHorizontalSpace(5.w),
          Column(
            mainAxisAlignment: mainCenter,
            crossAxisAlignment: crossStart,
            children: [
              Text(
                foundationNameTitle,
                style: CustomStyler.nigerianMedicalDevSubTitleStyle,
              ),
              Text(
                foundationNameSubTitle,
                style: CustomStyler.nigerianMedicalDevSubTitleSmallStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
