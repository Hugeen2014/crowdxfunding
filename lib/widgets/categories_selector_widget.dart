import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class CategoriesSelectorWidget extends StatefulWidget {
  const CategoriesSelectorWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesSelectorWidget> createState() => _CategoriesSelectorWidgetState();
}

class _CategoriesSelectorWidgetState extends State<CategoriesSelectorWidget> {
  int selectedIndex = 0;
  int cardSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: FittedBox(
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            _selectorWidget(context, Strings.categoriesImage, Strings.medical, 0 ),
            _selectorWidget(context, Strings.categoriesImage, Strings.education, 1 ),
            _selectorWidget(context, Strings.categoriesImage, Strings.church, 2 ),
            _selectorWidget(context, Strings.categoriesImage, Strings.disaster, 3 ),
            _selectorWidget(context, Strings.categoriesImage, Strings.funeral, 4 ),
          ],
        ),
      ),
    );
  }



  _selectorWidget(BuildContext context, String image, String name, int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
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
              border: Border.all(
                  color: selectedIndex == index
                      ? CustomColor.whiteColor
                      : Colors.transparent,
                  width: 1)
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              name,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
