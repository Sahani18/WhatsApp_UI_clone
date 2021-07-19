import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/call.dart';
import 'package:whatsapp_clone/Screens/camera.dart';
import 'package:whatsapp_clone/Screens/chat.dart';
import 'package:whatsapp_clone/Screens/status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // CameraController controller;
  //
  // @override
  // void initState() {
  //   super.initState();
  //  controller = CameraController(cameras[0],ResolutionPreset.medium
  //   );
  //   controller.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.teal.shade800,
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                  size: 24,
                ),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(text: 'CALLS'),
            ],
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 26,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 26,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: TabBarView(
          children: [
            Camera(),
            ChatScreen(),
            Status(),
            Call(),
          ],
        ),
      ),
    );
  }
}
