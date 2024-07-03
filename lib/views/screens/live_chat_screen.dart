import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfunding/data/live_chat_demo_message.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/utils/dimsensions.dart';
import 'package:xfunding/utils/strings.dart';
import 'package:xfunding/widgets/buttons/back_button_widget.dart';
import 'package:xfunding/widgets/message_widget.dart';

class LiveChatScreen extends StatelessWidget {
  const LiveChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackgroundColor,
      appBar: AppBar(
        title: Text(
          Strings.liveChat,
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
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
              reverse: true,
              itemCount: demoChatMessages.length,
              itemBuilder: (context, index) => MessageWidget(
                message: demoChatMessages[index],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.marginSize * 0.3),
                decoration: BoxDecoration(
                    color: CustomColor.inputBackgroundColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border:
                        Border.all(color: CustomColor.whiteColor, width: 1)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(Dimensions.marginSize * 0.3),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: Strings.composeYourMessage,
                              hintStyle: const TextStyle(
                                  color: CustomColor.whiteColor),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: CustomColor.primaryColor,
                          child: Icon(
                            FontAwesomeIcons.solidPaperPlane,
                            size: 16,
                            color: CustomColor.whiteColor,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
