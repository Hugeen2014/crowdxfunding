import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';

class MyWalletWidget extends StatelessWidget {
  const MyWalletWidget(
      {Key? key,
      required this.currentBalance,
      required this.currentBalanceMoney,
      required this.recentDepositOrWithdraw,
      required this.recentDepositOrWithdrawMoney,
      required this.buttonName,
      required this.onPressed})
      : super(key: key);

  final String currentBalance;
  final String currentBalanceMoney;
  final String recentDepositOrWithdraw;
  final String recentDepositOrWithdrawMoney;
  final String buttonName;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 150.h,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor.withOpacity(0.6),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: EdgeInsets.all(Dimensions.marginSize * 0.2),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize),
      child: Column(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Column(
                crossAxisAlignment: crossStart,
                children: [
                  Text(
                    currentBalance,
                    style: CustomStyler.currentBalanceStyle,
                  ),
                  Text(
                    currentBalanceMoney,
                    style: CustomStyler.currentBalanceMoneyStyle,
                  ),
                ],
              ),
              const Icon(
                FontAwesomeIcons.wallet,
                color: CustomColor.gray,
                size: 30,
              )
            ],
          ),
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Column(
                crossAxisAlignment: crossStart,
                children: [
                  Text(
                    recentDepositOrWithdraw,
                    style: CustomStyler.recentDepositStyle,
                  ),
                  Text(
                    recentDepositOrWithdrawMoney,
                    style: CustomStyler.recentDepositMoneyStyle,
                  ),
                ],
              ),
              _button(context)
            ],
          )
        ],
      ),
    );
  }

  _button(BuildContext context) {
    return SizedBox(
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
          buttonName,
          style: TextStyle(
              color: CustomColor.whiteColor,
              fontSize: Dimensions.smallTextSize * 0.7,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
