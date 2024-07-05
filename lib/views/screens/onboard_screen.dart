import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/onboard_controller.dart';
import 'package:xfunding/data/onboard_data.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({Key? key}) : super(key: key);
  final _controller = Get.put(OnBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: const ClampingScrollPhysics(),
            controller: _controller.pageController,
            onPageChanged: _controller.selectedIndex,
            itemCount: onboardData.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(onboardData[index].image),
                      fit: BoxFit.fill),
                ),
                child: Container(
                  color: Colors.redAccent.withOpacity(0.1),
                  child: Column(
                    mainAxisAlignment: mainSpaceBet,
                    crossAxisAlignment: crossCenter,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.defaultPaddingSize,
                            vertical: Dimensions.defaultPaddingSize * 2),
                        child: Row(
                          mainAxisAlignment: mainSpaceBet,
                          children: [
                            Obx(() => Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    onboardData.length,
                                    (index) => AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      margin: EdgeInsets.only(right: 10.w),
                                      height: 5.h,
                                      width: index <=
                                              _controller.selectedIndex.value
                                          ? 30.w
                                          : 20.w,
                                      decoration: BoxDecoration(
                                        color: index <=
                                                _controller.selectedIndex.value
                                            ? CustomColor.whiteColor
                                            : Colors.black.withOpacity(0.3),
                                        border: Border.all(
                                          color: index <=
                                                  _controller
                                                      .selectedIndex.value
                                              ? CustomColor.whiteColor
                                              : Colors.black.withOpacity(0.3),
                                          // width: 1.w,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                      ),
                                    ),
                                  ),
                                )),
                            Obx(
                              () => _controller.isFirstPage ||
                                      _controller.isSecondPage
                                  ? GestureDetector(
                                      onTap: _controller.pageNavigate,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 60.w,
                                        height: 30.h,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(12.r)),
                                        child: Text(
                                          Strings.skip,
                                          style: CustomStyler.skipStyle,
                                        ),
                                      ))
                                  : Container(),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: crossCenter,
                        children: [
                          Column(
                            crossAxisAlignment: crossStart,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.defaultPaddingSize * 0.5),
                                child: Text(
                                  onboardData[index].title,
                                  textAlign: TextAlign.start,
                                  style: CustomStyler.onboardTitleStyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        Dimensions.defaultPaddingSize * 0.5),
                                child: Text(
                                  onboardData[index].description,
                                  textAlign: TextAlign.start,
                                  style: CustomStyler.onboardDesStyle,
                                ),
                              ),
                            ],
                          ),
                          addVerticalSpace(20.h),
                          InkWell(
                            onTap: () {
                              _controller.onTapCheck();
                            },
                            child: Container(
                              width: 45.w,
                              height: 60.h,
                              decoration: BoxDecoration(
                                color:
                                    CustomColor.primaryColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: CustomColor.whiteColor,
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              padding:
                                  EdgeInsets.all(Dimensions.defaultPaddingSize),
                              child: Row(
                                mainAxisAlignment: mainCenter,
                                children: [
                                  Text(
                                    Strings.termsAndPolicy,
                                    style: CustomStyler.termsAndPolicyOneStyle,
                                  ),
                                  Text(
                                    Strings.termsAndService,
                                    style: CustomStyler.termsAndPolicyTwoStyle,
                                  ),
                                  Text(
                                    Strings.and,
                                    style: CustomStyler.termsAndPolicyOneStyle,
                                  ),
                                  Text(
                                    Strings.privacyPolicy,
                                    style: CustomStyler.termsAndPolicyTwoStyle,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
