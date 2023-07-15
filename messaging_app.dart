class Message {
  String sender;
  String content;
  DateTime timestamp;

  Message(this.sender, this.content) : timestamp = DateTime.now();
}

class MessagingApp {
  List<Message> messages = [];

  void sendMessage(String sender, String content) {
    Message message = Message(sender, content);
    messages.add(message);
    print('Message sent by $sender: $content');
  }

  void displayMessages() {
    print('----- Message History -----');
    for (Message message in messages) {
      print('${message.timestamp} - ${message.sender}: ${message.content}');
    }
    print('----------------------------');
  }
}

void main() {
  MessagingApp messagingApp = MessagingApp();

  messagingApp.sendMessage('Alice', 'Hello Bob!');
  messagingApp.sendMessage('Bob', 'Hi Alice!');
  messagingApp.sendMessage('Alice', 'How are you?');
  
  messagingApp.displayMessages();
}
