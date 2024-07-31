import 'package:flutter/material.dart';
import 'package:whatapp_tabbar/view/whatsapp_screen/whatsapp_screen.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsappScreen(),
    );
  }
}