import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class UrgentFundingWidget extends StatelessWidget {
  const UrgentFundingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 2,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 14
        ),
        controller: ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              height: 240,
              color: CustomColor.primaryColor,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.6), BlendMode.dstATop),
                          image: const ExactAssetImage(Strings.categoriesImage),
                          fit: BoxFit.cover),
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
                      child: Column(
                        mainAxisAlignment: mainStart,
                        crossAxisAlignment: crossEnd,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding:
                              EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                color: CustomColor.primaryColor.withOpacity(0.6),
                              ),
                              child: const Text(
                                'donate now',
                                style: TextStyle(
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
                          child: const Text(
                            "Share Nutritious Food",
                            style: TextStyle(
                              fontSize: 12,
                              color: CustomColor.whiteColor,
                            ),
                          ),
                        ),
                        addVerticalSpace(5.h),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: mainSpaceBet,
                              children: const [
                                Text(
                                  "\$709836.00",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "27 Days Left",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: mainSpaceBet,
                              children: const [
                                Text(
                                  "70% Donated",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Goal: \$10000000.00",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
    });
  }
}
