import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/Screens/Chat_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/camera.dart';

import 'Screens/home.dart';




 Future <void> main() async{
   WidgetsFlutterBinding.ensureInitialized();
   cameras = await availableCameras();
   runApp(MyApp());
 }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primarySwatch: Colors.teal,
      fontFamily: GoogleFonts.robotoTextTheme().bodyText1.fontFamily,
      ),
     home: HomePage(),

    );
  }
}
