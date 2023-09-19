class ChatUsers{
  late String name; //name of the user
  late String messageText; //most recent message in the chat
  late String image; //user profile picture
  late String time; //time the last message was received or sent
  ChatUsers({required this.name, required this.messageText, required this.image, required this.time});
}

