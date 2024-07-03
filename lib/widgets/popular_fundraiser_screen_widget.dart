import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class PopularFundraiserScreenWidget extends StatelessWidget {
  const PopularFundraiserScreenWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

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
          Padding(
              padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
              child: Image.asset(
                image,
              )),
          addHorizontalSpace(5.w),
          Column(
            mainAxisAlignment: mainCenter,
            crossAxisAlignment: crossStart,
            children: [
              Column(
                crossAxisAlignment: crossStart,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.all(Dimensions.defaultPaddingSize * 0.1),
                    child: Text(
                      title,
                      style: CustomStyler.nigerianMedicalDevTitleStyle,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(Dimensions.defaultPaddingSize * 0.1),
                    child: Text(
                      subTitle,
                      style: CustomStyler.popularSubTitleStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: TextButton.styleFrom(
                    elevation: 0,
                    backgroundColor: CustomColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.r),
                      ),
                      side: const BorderSide(
                        width: 1,
                        color: CustomColor.primaryColor,
                      ),
                    ),
                  ),
                  child: Text(
                    Strings.viewProfile,
                    style: TextStyle(
                        color: CustomColor.whiteColor,
                        fontSize: Dimensions.smallTextSize * 0.7,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
