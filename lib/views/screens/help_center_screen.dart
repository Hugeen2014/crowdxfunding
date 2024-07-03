import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xfunding/routes/routes.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/size.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.helpCenter,
          style: const TextStyle(color: CustomColor.whiteColor),
        ),
        leading: const BackButtonWidget(),
        backgroundColor: CustomColor.primaryBackgroundColor,
        elevation: 0,
      ),
      body: _bodyWidget(context),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColor.primaryColor,
        onPressed: () {
          Get.toNamed(Routes.liveChatScreen);
        },
        child: const Icon(Icons.question_answer),
      ),
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      children: [
        _helpCenterQnWidget(context, Strings.qnOne, () {}),
        _helpCenterQnWidget(context, Strings.qnTwo, () {}),
        _helpCenterQnWidget(context, Strings.qnThree, () {}),
        _helpCenterQnWidget(context, Strings.qnFour, () {}),
        _helpCenterQnWidget(context, Strings.qnFive, () {}),
      ],
    );
  }

  _helpCenterQnWidget(
    BuildContext context,
    String question,
    VoidCallback onPressed,
  ) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
      padding: EdgeInsets.all(Dimensions.defaultPaddingSize * 0.3),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossCenter,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              question,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomStyler.helpCenterQnStyle,
            ),
          ),
          IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: CustomColor.whiteColor,
              ))
        ],
      ),
    );
  }
}
