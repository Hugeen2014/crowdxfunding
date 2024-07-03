import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/categories_child_container_widget.dart';

class FuneralScreen extends StatelessWidget {
  const FuneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            Strings.funeral,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
          leading: const BackButtonWidget(),
          backgroundColor: CustomColor.primaryBackgroundColor,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CategoriesChildContainerWidget(
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
}