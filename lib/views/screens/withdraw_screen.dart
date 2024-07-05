import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xfunding/controller/withdraw_controller.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/buttons/primary_button_widget.dart';
import 'package:xfunding/widgets/deposit_and_withraw_transaction_widget.dart';
import 'package:xfunding/widgets/inputs/input_text_field.dart';
import 'package:xfunding/widgets/labels/text_labels_widget.dart';

class WithdrawScreen extends StatelessWidget {
  WithdrawScreen({Key? key}) : super(key: key);
  final _controller = Get.put(WithdrawController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.withdraw,
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

        _amountWidget(context),
        _transactionWidget(context),
        _addCardWidget(context),
        _proceedButtonWidget(context),
      ],
    );
  }


  _amountWidget(BuildContext context) {
    return Column(
      mainAxisAlignment: mainStart,
      crossAxisAlignment: crossStart,
      children: [
       TextLabelsWidget(textLabels: Strings.amount),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.5),
          child: InputTextField(
            hintText: Strings.amount,
            iconData: Icons.attach_money,
            hintTextColor: CustomColor.whiteColor,
            backgroundColor: CustomColor.inputBackgroundColor,
            controller: _controller.amountController,
          ),
        ),
      ],
    );
  }


  _transactionWidget(BuildContext context){
    return Column(
      children: [
        TextLabelsWidget(textLabels: Strings.to),
        DepositAndWithdrawTransactionWidget(),
      ],
    );
  }


  _addCardWidget(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.addCardScreen);
        },
        child: Text(
          Strings.addCard,
          style: TextStyle(color: CustomColor.whiteColor.withOpacity(0.6)),
        ),
      ),
    );
  }

  _proceedButtonWidget(BuildContext context) {
    return PrimaryButtonWidget(
      title: Strings.proceed,
      onPressed: () {
        Get.back();
      },
      borderColor: CustomColor.primaryColor,
      backgroundColor: CustomColor.primaryColor,
      textColor: CustomColor.whiteColor,
    );
  }
}
