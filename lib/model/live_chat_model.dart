enum ChatMessageType { text, audio, image, video }
enum MessageStatus { notSent, notView, viewD }

class ChatMessage {
  final String text;
  // final String timeText;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage(this.text, this.messageType, this.messageStatus, this.isSender);
}