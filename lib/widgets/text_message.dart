import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xfunding/model/live_chat_model.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';


class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: message.isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
            padding: EdgeInsets.all(Dimensions.marginSize * 0.5),
            margin: EdgeInsets.symmetric(horizontal: Dimensions.marginSize * 0.3),
            decoration: BoxDecoration(
              color:
              message.isSender ? CustomColor.secondaryColor : CustomColor.primaryColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              message.text,
              softWrap: true,
              style: TextStyle(
                  color: message.isSender ? CustomColor.whiteColor : CustomColor.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}