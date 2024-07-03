import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/slider_widget.dart';

class DonateNowScreen extends StatelessWidget {
  const DonateNowScreen({super.key});

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
        _imageWidget(context),
        _detailsWidget(context),
        _donateNowButtonWidget(context),
        _descriptionWidget(context)
      ],
    );
  }

  _imageWidget(BuildContext context) {
    return Container(
      // width: 400.w,
      height: 350.h,
      decoration: BoxDecoration(
        color: CustomColor.appBarColor,
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: const ExactAssetImage(Strings.headerImage),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossEnd,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossEnd,
              children: [
                Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    const BackButtonWidget(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.share,
                          color: CustomColor.whiteColor,
                        ))
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
            child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossEnd,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultPaddingSize * 0.3),
                  child: Text(Strings.shareNutritiousFood,
                      style: CustomStyler.donateNowTitleStyle),
                ),
                addVerticalSpace(5.h),
                Column(
                  crossAxisAlignment: crossEnd,
                  children: [
                    SizedBox(
                      height: 70.h,
                      child: Padding(
                        padding:
                            EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
                        child: Row(
                          mainAxisAlignment: mainStart,
                          crossAxisAlignment: crossStart,
                          children: [
                            Image.asset(Strings.notificationImage),
                            addHorizontalSpace(10.w),
                            Column(
                              mainAxisAlignment: mainCenter,
                              crossAxisAlignment: crossStart,
                              children: [
                                Text(
                                  Strings.donateForEducation,
                                  style: CustomStyler.donateNowSubTitleStyle,
                                ),
                                Text(
                                  Strings.date,
                                  style: CustomStyler
                                      .notificationContainerDateStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _detailsWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
      child: Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossEnd,
        children: [
          Column(
            crossAxisAlignment: crossEnd,
            children: [
              Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  Text(
                    Strings.shareNutritiousFoodMoney,
                    maxLines: 2,
                    style: CustomStyler.bigContainerSmallStyle,
                  ),
                  Text(
                    Strings.shareNutritiousFoodLeftDays,
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
              // Flexible(child: SliderWidget(),),
              Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  Text(
                    Strings.shareNutritiousFoodDonatedPercentage,
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
                        Strings.shareNutritiousFoodMoneyGoal,
                        maxLines: 2,
                        style: CustomStyler.bigContainerSmallStyle,
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _donateNowButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.donateNow,
      onPressed: () {
        Get.toNamed(Routes.donateScreen);
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }

  _descriptionWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossStart,
        children: [
          Text(
            Strings.description,
            style: CustomStyler.bigContainerTitleStyle,
          ),
          addVerticalSpace(10.w),
          Text(
            Strings.descriptionDetailsOne,
            style: CustomStyler.descriptionDetailsStyle,
          ),
          addVerticalSpace(10.h),
          Text(
            Strings.descriptionDetailsTwo,
            style: CustomStyler.descriptionDetailsStyle,
          ),
        ],
      ),
    );
  }
}
