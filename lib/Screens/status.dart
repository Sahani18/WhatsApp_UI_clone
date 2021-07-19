import 'package:flutter/material.dart';
import '../Models/user.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _myStatus(),
          _StoryDivider(),
          Container(
            color: Colors.white,
            height: 480,
            child: _buildStatusWidget(),
          ),
        ],
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          backgroundColor: Colors.grey.shade300,
          child: Icon(
            Icons.mode_edit,
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
          child: Icon(Icons.camera_alt),
          heroTag: null,
        )
      ]),
    );
  }

  _buildStatusWidget() {
    return ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(messageData[index].photoUrl),
                    radius: 25,
                  ),
                ),
                title: Text(
                  messageData[index].name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      wordSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    messageData[index].time,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              _buildTileDivider(),
            ],
          );
        });
  }

  _myStatus() {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(15, 8, 20, 8),
      leading: CircleAvatar(
        child: Text('A'),
        backgroundColor: Colors.blue,
        radius: 30,
      ),
      title: Text(
        'My Status',
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            wordSpacing: 1,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Yesterday, 9:02 PM',
        style: TextStyle(fontSize: 14),
      ),
      trailing: Icon(
        Icons.more_horiz,
        size: 26,
        color: Colors.teal.shade800,
      ),
    );
  }

  _StoryDivider() {
    return SizedBox(
      height: 35,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        color: Colors.grey.shade300,
        child: Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Viewed updates',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4),
            )),
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
