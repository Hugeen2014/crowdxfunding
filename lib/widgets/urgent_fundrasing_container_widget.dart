import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import '../../widgets/slider_widget.dart';

class UrgentFundraisingContainerWidget extends StatelessWidget {
  const UrgentFundraisingContainerWidget(
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
      width: 193.w,
      height: 200.h,
      decoration: BoxDecoration(
          color: CustomColor.appBarColor,
          borderRadius: BorderRadius.circular(15.r)),
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: ExactAssetImage(image),
                  fit: BoxFit.cover),
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
              child: Column(
                mainAxisAlignment: mainStart,
                crossAxisAlignment: crossEnd,
                children: [
                  InkWell(
                    onTap: onPressed,
                    child: Container(
                      padding:
                          EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
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
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossStart,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(title, style: CustomStyler.urgentTitleStyle),
                ),
                addVerticalSpace(5.h),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                        Text(
                          foundationNameTitle,
                          style: CustomStyler.urgentFoundingSmallStyle,
                        ),
                        Text(
                          donateDaysLeft,
                          style: CustomStyler.urgentFoundingSmallStyle,
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
                          style: CustomStyler.urgentFoundingSmallStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              Strings.goal,
                              maxLines: 2,
                              style: CustomStyler.urgentFoundingSmallStyle,
                            ),
                            Text(
                              totalDonatedGoal,
                              maxLines: 2,
                              style: CustomStyler.urgentFoundingSmallStyle,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
