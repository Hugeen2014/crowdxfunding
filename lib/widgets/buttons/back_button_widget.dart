import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xfunding/utils/strings.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Image.asset(Strings.backButtonImage)
    );
  }
}
