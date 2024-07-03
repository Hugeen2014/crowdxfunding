import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class AccomplishedCampaignContainerWidget extends StatelessWidget {
  const AccomplishedCampaignContainerWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.totalCampaignDays,
      required this.totalGoalAmount,
      required this.totalReachAmount});

  final String image;
  final String title;
  final String totalCampaignDays;
  final String totalGoalAmount;
  final String totalReachAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
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
                  _campaignDurationWidget(context),
                  addVerticalSpace(10.h),
                  _goalsWidget(context),
                  _reachWidget(context),
                ],
              ),
              addVerticalSpace(5.h),
              // _detailsWidget(context),
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
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            ),
          ),
          child: Image.asset(image)),
    );
  }

  _containerTitle(BuildContext context) {
    return Text(
      title,
      style: CustomStyler.nigerianMedicalDevTitleStyle,
    );
  }

  _campaignDurationWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        Text(
          Strings.campaignDuration,
          style: CustomStyler.accomplishedCampaignSubTitleStyle,
        ),
        Text(
          totalCampaignDays,
          style: CustomStyler.accomplishedCampaignSubTitleStyle,
        ),
        Text(
          Strings.days,
          style: CustomStyler.accomplishedCampaignSubTitleStyle,
        ),
      ],
    );
  }

  _goalsWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        Text(
          Strings.goal,
          style: CustomStyler.accomplishedCampaignGoalSubTitleStyle,
        ),
        Text(
          totalGoalAmount,
          style: CustomStyler.accomplishedCampaignGoalSubTitleStyle,
        ),
      ],
    );
  }

  _reachWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        Text(
          Strings.reach,
          style: CustomStyler.accomplishedCampaignGoalSubTitleStyle,
        ),
        Text(
          totalReachAmount,
          style: CustomStyler.accomplishedCampaignGoalSubTitleStyle,
        ),
      ],
    );
  }
}
