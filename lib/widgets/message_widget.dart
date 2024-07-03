import 'package:flutter/material.dart';
import 'package:xfunding/model/live_chat_model.dart';
import 'package:xfunding/utils/custom_color.dart';
import 'package:xfunding/widgets/text_message.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(
            message: message,
          );
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/chat-one.png"),
            )
          ],
          messageContain(message),
          if (message.isSender) _messageSeen(),
        ],
      ),
    );
  }

  _messageSeen() {
    return Container(
        margin: const EdgeInsets.only(left: 5, top: 20),
        height: 12,
        width: 12,
        decoration: const BoxDecoration(
          color: CustomColor.primaryColor,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          "assets/images/chat-one.png",
        ));
  }
}
