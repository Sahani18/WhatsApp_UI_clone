class Chat {
  String name;
  String message;
  String time;
  String photoUrl;

  Chat({this.name, this.message, this.time, this.photoUrl});
}

  List<Chat> messageData = [
    new Chat(
        name: 'Bheem',
        message: "Hi mate! how you doin",
        time: "12:34 PM",
        photoUrl: "assets/bheem.jpeg"),
    new Chat(
        name: "Bholu",
        message: "Kaha ho be",
        time: "10:15 AM",
        photoUrl: "assets/bholu.png"),
    new Chat(
        name: "Dholu",
        message: "Kaliya mar gya",
        time: "10:30 AM",
        photoUrl: "assets/dholu.jpeg"),
    new Chat(
        name: "Hema",
        message: "Aj hamne pawari ki",
        time: "Yesterday",
        photoUrl: "assets/hema.jpeg"),
    new Chat(
        name: "Jaya",
        message: "Ghoomne chaloge?",
        time: "Yesterday",
        photoUrl: "assets/jaya.jpeg"),
    new Chat(
        name: "Raju",
        message: "Kaha ho be",
        time: "10/04/21",
        photoUrl: "assets/Raju.jpeg"),
    new Chat(
        name: "Rekha",
        message: "Sutta pine chaloge?",
        time: "08/04/21",
        photoUrl: "assets/rekha.jpeg"),
  ];

