import 'package:flutter/material.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';

class PopularFundraiserHomeWidget extends StatelessWidget {
  const PopularFundraiserHomeWidget(
      {super.key,
      required this.image,
      required this.foundationNameTitle,
      required this.foundationNameSubTitle});

  final String image;
  final String foundationNameTitle;
  final String foundationNameSubTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Column(
        mainAxisAlignment: mainCenter,
        crossAxisAlignment: crossCenter,
        children: [
          Image.asset(image),
          Text(foundationNameTitle, style: CustomStyler.popularTitleStyle),
          Text(
            foundationNameSubTitle,
            style: CustomStyler.popularDesStyle,
          )
        ],
      ),
    );
  }
}
