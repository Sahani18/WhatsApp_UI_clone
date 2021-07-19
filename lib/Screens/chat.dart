import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_clone/Screens/Chat_detail.dart';
import '../Models/user.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildChatWidget(),
    );
  }

  _buildChatWidget() {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(messageData[index].photoUrl),
                ),
                title: Text(
                  messageData[index].name,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    messageData[index].message,
                    style: TextStyle(fontSize: 14,fontFamily: 'Helvetica'),
                  ),
                ),
                trailing: Text(
                  messageData[index].time,
                  style: TextStyle(color: Colors.grey[600],fontFamily: 'Helvetica'),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => ChatDetailScreen(
                                name: messageData[index].name,
                                photoUrl: messageData[index].photoUrl,
                            msg: messageData[index].message,

                              )));
                },
              ),
              _buildTileDivider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.chat),
        onPressed: () {},
      ),
    );
  }

  _buildTileDivider() {
    return Divider(
      thickness: 1,
      indent: 80,
      endIndent: 15,
    );
  }
}
