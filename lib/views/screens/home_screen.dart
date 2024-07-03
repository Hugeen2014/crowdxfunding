import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/views/screens/drawer_screen.dart';
import 'package:xfunding/widgets/categories_container_widget.dart';
import 'package:xfunding/widgets/popular_fundraiser_home_widget.dart';
import 'package:xfunding/widgets/urgent_fundrasing_container_widget.dart';
import '../../widgets/slider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CustomColor.appBarColor,
        iconTheme: const IconThemeData(color: CustomColor.whiteColor),
        title: Image.asset(
          Strings.splashLogo,
          width: 100.w,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.notificationScreen);
              },
              icon: const Icon(
                Icons.notifications,
                color: CustomColor.whiteColor,
              ))
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _headerContainerWidget(context),
        _categoriesTitleWidget(context),
        _categoriesWidget(context),
        addVerticalSpace(20.h),
        _urgentFundraisingTitleWidget(context),
        _urgentFundraisingWidget(context),
        addVerticalSpace(20.h),
        _popularFundraiserTitleWidget(context),
        _popularFundraiserWidget(context),
        addVerticalSpace(30.h),
      ],
    );
  }

  _headerContainerWidget(BuildContext context) {
    return SizedBox(
        height: 300.h,
        child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 400.w,
                decoration: BoxDecoration(
                  color: CustomColor.appBarColor,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.dstATop),
                      image: const ExactAssetImage(Strings.headerImage),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
                padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.5),
                child: Column(
                  mainAxisAlignment: mainSpaceBet,
                  crossAxisAlignment: crossEnd,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
                      child: Column(
                        mainAxisAlignment: mainStart,
                        crossAxisAlignment: crossEnd,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.donateNowScreen);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 80.h,
                              height: 40.h,
                              padding: EdgeInsets.all(
                                  Dimensions.defaultPaddingSize * 0.3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color:
                                    CustomColor.primaryColor.withOpacity(0.6),
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
                    Padding(
                      padding:
                          EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
                      child: Column(
                        mainAxisAlignment: mainStart,
                        crossAxisAlignment: crossEnd,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(Strings.shareNutritiousFood,
                                style: CustomStyler.bigContainerTitleStyle),
                          ),
                          addVerticalSpace(5.h),
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
                                    Strings
                                        .shareNutritiousFoodDonatedPercentage,
                                    maxLines: 2,
                                    style: CustomStyler.bigContainerSmallStyle,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        Strings.goal,
                                        maxLines: 2,
                                        style:
                                            CustomStyler.bigContainerSmallStyle,
                                      ),
                                      Text(
                                        Strings.shareNutritiousFoodMoneyGoal,
                                        maxLines: 2,
                                        style:
                                            CustomStyler.bigContainerSmallStyle,
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
            }));
  }

  _categoriesTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Strings.categories,
              style: CustomStyler.categoriesStyle,
            ),
          )
        ],
      ),
    );
  }

  _categoriesWidget(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.medical,
              onPressed: () {
                Get.toNamed(Routes.medicalScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.education,
              onPressed: () {
                Get.toNamed(Routes.educationScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.church,
              onPressed: () {
                Get.toNamed(Routes.churchScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.disaster,
              onPressed: () {
                Get.toNamed(Routes.disasterScreen);
              },
            ),
            CategoriesContainerWidget(
              image: Strings.categoriesImage,
              name: Strings.funeral,
              onPressed: () {
                Get.toNamed(Routes.funeralScreen);
              },
            ),
          ],
        ),
      ),
    );
  }

  _urgentFundraisingTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.urgentFundraising,
            style: CustomStyler.categoriesStyle,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.urgentFundraisingScreen);
            },
            child: Text(
              Strings.sellAll,
              style: CustomStyler.sellAllStyle,
            ),
          )
        ],
      ),
    );
  }

  _urgentFundraisingWidget(BuildContext context) {
    return SizedBox(
        height: 240.h,
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return UrgentFundraisingContainerWidget(
                image: Strings.headerImage,
                title: Strings.nigerianMedicalDev,
                foundationNameTitle: Strings.nigerianMedicalDev,
                foundationNameSubTitle: Strings.nigerianFoundation,
                totalDonatedMoney: Strings.shareNutritiousFoodMoney,
                donateDaysLeft: Strings.shareNutritiousFoodLeftDays,
                totalDonatedPercentage:
                    Strings.shareNutritiousFoodDonatedPercentage,
                totalDonatedGoal: Strings.shareNutritiousFoodMoneyGoal,
                onPressed: () {
                  Get.toNamed(Routes.donateNowScreen);
                },
              );
            }));
  }

  _popularFundraiserTitleWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            Strings.popularFundraiser,
            style: CustomStyler.categoriesStyle,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.popularFundraiserScreen);
            },
            child: Text(
              Strings.sellAll,
              style: CustomStyler.sellAllStyle,
            ),
          )
        ],
      ),
    );
  }

  _popularFundraiserWidget(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 120.h,
      child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return PopularFundraiserHomeWidget(
              image: Strings.notificationImage,
              foundationNameTitle: Strings.donationKiosks,
              foundationNameSubTitle: Strings.nigerianFoundation,
            );
          }),
    );
  }
}
