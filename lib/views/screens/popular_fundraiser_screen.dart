import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/popular_fundraiser_screen_widget.dart';

class PopularFundraiserScreen extends StatelessWidget {
  const PopularFundraiserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.primaryBackgroundColor,
        appBar: AppBar(
          title: Text(
            Strings.popularFundraiser,
            style: const TextStyle(color: CustomColor.whiteColor),
          ),
          leading: const BackButtonWidget(),
          backgroundColor: CustomColor.primaryBackgroundColor,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return PopularFundraiserScreenWidget(
                image: Strings.popularImage,
                title: Strings.popularFundraiser,
                subTitle: Strings.americanFounding,
                onPressed: () {
                  Get.toNamed(Routes.donationKiosksScreen);
                },
              );
            }));
  }
}
