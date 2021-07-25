import 'package:flutter_chat_ui/model/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/roy.jpg',
);

// USERS
final User chris = User(
  id: 1,
  name: 'Chris',
  imageUrl: 'assets/images/chris.jpg',
);

final User sophie = User(
  id: 2,
  name: 'Sophie',
  imageUrl: 'assets/images/sophie.jpg',
);

final User steve = User(
  id: 3,
  name: 'Steve',
  imageUrl: 'assets/images/steve.jpg',
);

final User henry = User(
  id: 4,
  name: 'Henry',
  imageUrl: 'assets/images/henry.jpg',
);

final User olivia = User(
  id: 5,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);

final User greg = User(
  id: 6,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);

final User miranda = User(
  id: 7,
  name: 'Miranda',
  imageUrl: 'assets/images/miranda.jpg',
);

List<User> favourites = [olivia, greg, miranda, steve, sophie, chris];

// Example Chats on home screen
List<Message> chats = [
  Message(
    sender: steve,
    time: '5:20 PM',
    text: 'Hey, are you available at the moment',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: miranda,
    time: '7:00 AM',
    text: 'What are your plans for today',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: chris,
    time: '5:20 PM',
    text: 'Wanna hang out tonight bro',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '9:00 PM',
    text: 'I pushed the wrong codebase to the repository',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: olivia,
    time: '11:00 PM',
    text: 'Can I come over?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: sophie,
    time: '1:15 AM',
    text: 'Can\'t make it today, I have an appointment by 12',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: henry,
    time: '8:00 PM',
    text: 'Are you down for a rematch?',
    isLiked: true,
    unread: true,
  ),
];

List<Message> messages = [
  Message(
    sender: currentUser,
    time: '5:20 PM',
    text: 'Hey, you up?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steve,
    time: '5:22 PM',
    text: 'Yeah, why?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '7:00 PM',
    text: 'Wanna hang out tonight bro',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steve,
    time: '9:00 PM',
    text: 'Naa, I have to some I have to get done before I sleeep',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: steve,
    time: '9:01 PM',
    text: 'Can I come over whenever I am done?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '1:15 AM',
    text: 'I feel asleep, wanna hang today though',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: steve,
    time: '8:00 AM',
    text: 'I\'m seeing the game today, can\'t make it.',
    isLiked: true,
    unread: true,
  ),
];
