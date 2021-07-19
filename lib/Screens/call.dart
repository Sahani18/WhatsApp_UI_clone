import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/user.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: _buildCallTile(),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              Icons.video_call_outlined,
              size: 26,
              color: Colors.blueGrey[600],
            ),
            heroTag: null,
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.add_ic_call),
            heroTag: null,
          ),
        ]));
  }

  _buildCallTile() {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black26,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(messageData[index].photoUrl),
                    radius: 25,
                  ),
                ),
                title: Text(
                  messageData[index].name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  messageData[index].time,
                  style: TextStyle(fontSize: 14),
                ),
                trailing: Icon(
                  Icons.call,
                  color: Colors.teal.shade800,
                ),
              ),
              _buildTileDivider(),
            ],
          );
        });
  }

  _buildTileDivider() {
    return Divider(
      thickness: 1,
      indent: 80,
      endIndent: 15,
    );
  }
}
