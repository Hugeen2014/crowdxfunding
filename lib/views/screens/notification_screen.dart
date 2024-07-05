import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.notification,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.primaryBackgroundColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _donateWidget(context),
      ],
    );
  }
}


_donateWidget(BuildContext context){
  return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index){
        return Container(
          height: 90.h,
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
          child: Padding(
            padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
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
                    Text(Strings.donateForEducation, style: CustomStyler.notificationContainerTitleStyle,),
                    Text(Strings.date, style: CustomStyler.notificationContainerDateStyle,),
                  ],
                )
              ],
            ),
          ),
        );

  });
}
