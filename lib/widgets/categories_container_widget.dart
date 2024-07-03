import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/dimsensions.dart';

class CategoriesContainerWidget extends StatelessWidget {
  const CategoriesContainerWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.onPressed});

  final String image;
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          width: 150.w,
          height: 150.h,
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstATop),
                image: ExactAssetImage(image),
                fit: BoxFit.cover),
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              name,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
