import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/transaction_controller.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';

class DepositAndWithdrawTransactionWidget extends StatelessWidget {
  DepositAndWithdrawTransactionWidget({Key? key}) : super(key: key);
  final _controller = Get.put(TransactionController());


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
        _selectorWidget(context, FontAwesomeIcons.ccPaypal,
            Strings.paypal, Strings.paypal),
        addVerticalSpace(10.h),
        _selectorWidget(context, FontAwesomeIcons.ccStripe,
            Strings.stripe, Strings.stripe),
        addVerticalSpace(10.h),
        _selectorWidget(context, FontAwesomeIcons.ccVisa,
            Strings.carNumber, Strings.carNumber),
        addVerticalSpace(10.h),
      ],
    );
  }




  _selectorWidget(BuildContext context, IconData icon,
      String paymentMethodName, String selectorIndex) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColor.inputBackgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: CustomColor.whiteColor)),
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.1),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.2),
                child: Icon(
                  icon,
                  color: CustomColor.whiteColor,
                ),
              ),
              addHorizontalSpace(10.w),
              Text(
                paymentMethodName,
                style: CustomStyler.myWalletStyle,
              )
            ],
          ),
          Obx(
                () => Radio(
              activeColor: CustomColor.primaryColor,
              hoverColor: CustomColor.primaryColor,
              value: selectorIndex,
              groupValue: _controller.selectedPaymentMethod.value,
              onChanged: (value) {
                _controller.onChangeLanguage(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
