import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.appBarColor,
      child: ListView(
        children: [
          _headerDrawer(context),
          _drawerList(context),
        ],
      ),
    );
  }


  _headerDrawer(BuildContext context) {
    return Container(

      height: Dimensions.heightSize * 20,
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
      decoration: const BoxDecoration(
        color: CustomColor.primaryBackgroundColor
      ),

      child: Column(
        mainAxisAlignment: mainEnd,
        crossAxisAlignment: crossCenter,
        children: [
          CircleAvatar(
            radius: 30,
            child: Image.asset(Strings.profileImage),
          ),
          addVerticalSpace(10.h),
          Text(Strings.profileName, style: CustomStyler.donationKiosksTitleStyle),
          Text(Strings.profileOrg, style: CustomStyler.donationKiosksSubTitleStyle),
        ],
      ),
    );
  }


  _drawerList(BuildContext context) {
    return Column(
      children: [
        _menuItems(
          context,
          Strings.editProfile,
          Icons.account_circle,
          25,
              () {
            Get.toNamed(Routes.editProfileScreen);
          },
        ),
        _menuItems(
          context,
          Strings.myCards,
          Icons.credit_card,
          25,
              () {
            Get.toNamed(Routes.myCardScreen);
          },
        ),
        _menuItems(
          context,
          Strings.myDonations,
          FontAwesomeIcons.fileInvoiceDollar,
          25,
              () {
            Get.toNamed(Routes.myDonationsScreen);
          },
        ),
        _menuItems(
          context,
          Strings.changePassword,
          Icons.key,
          25,
              () {
            Get.toNamed(Routes.changePasswordScreen);
          },
        ),
        _menuItems(
          context,
          Strings.changeLanguage,
          Icons.g_translate,
          25,
              () {
            Get.toNamed(Routes.changeLanguageScreen);
          },
        ),
        _menuItems(
          context,
          Strings.shareApp,
          Icons.share,
          25,
              () {

          },
        ),
        _menuItems(
          context,
          Strings.helpCenter,
          Icons.business_center,
          25,
              () {
            Get.toNamed(Routes.helpCenterScreen);
          },
        ),
        _menuItems(
          context,
          Strings.aboutUs,
          Icons.info,
          25,
              () {
            Get.toNamed(Routes.aboutUsScreen);
          },
        ),
        _menuItems(
          context,
          Strings.privacyPolicy,
          Icons.lock,
          25,
              () {},
        ),
        _menuItems(
          context,
          Strings.rateUs,
          Icons.star_half,
          25,
              () {},
        ),
        _menuItems(
          context,
          Strings.signOut,
          Icons.power_settings_new,
          25,
              () {
            Get.toNamed(Routes.signInScreen);
          },
        ),

        addVerticalSpace(50.h),
      ],
    );
  }


  _menuItems(BuildContext context, String screenName, IconData icon,
      double iconSize, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      splashColor: CustomColor.primaryColor,
      child: Padding(
        padding:
        EdgeInsets.symmetric(vertical: Dimensions.defaultPaddingSize * 0.4),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: iconSize,
                color: CustomColor.whiteColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                screenName,
                style: const TextStyle(
                  color: CustomColor.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w100
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
