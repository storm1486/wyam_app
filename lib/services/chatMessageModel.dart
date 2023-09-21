class ChatMessage{
  final String messageContent; // content of the message in chat
  final String messageType;// checks if user is sender or receiver

  ChatMessage({required this.messageContent, required this.messageType});
}