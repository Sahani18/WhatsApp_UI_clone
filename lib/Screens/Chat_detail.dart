import 'package:flutter/material.dart';

class ChatDetailScreen extends StatefulWidget {
  String name;
  String photoUrl;
  String msg;

  ChatDetailScreen({this.name, this.photoUrl, this.msg});

  @override
  _ChatDetailScreenState createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        toolbarHeight: 65,
        titleSpacing: 12,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(widget.photoUrl),
            backgroundColor: Colors.white70,
          ),
        ),
        title: Text(
          widget.name,
          style: TextStyle(fontSize: 18, fontFamily: 'Helvetica'),
        ),
        actions: [
          Icon(
            Icons.videocam_rounded,
            size: 26,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Icon(
            Icons.call,
            size: 26,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 26,
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 10,left: 15),

              height: height-177,
              width: width,
              child: Stack(
                children: [
                  Container(
                   // margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    height: 28,
                    width: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,

                    ),

                    child: Positioned(
                      top: 10,
                      child: Text(
                        widget.msg,
                        style: TextStyle(fontSize: 18, fontFamily: 'Helvetica',),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
             color: Colors.white,
              padding: EdgeInsets.only(top: 4),
              height: 70,
              width: width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: width - 50,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      // tileColor: Colors.blue,
                      title: TextFormField(
                        toolbarOptions: ToolbarOptions(
                            copy: true, cut: true, paste: true, selectAll: true),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.tag_faces_outlined),
                          suffixIcon: Icon(Icons.camera_alt),
                          hintText: 'Type a message',
                          hintMaxLines: 5,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 1)),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.teal.shade600,
                    child: IconButton(
                      icon: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
