import 'package:flutter/material.dart';
import 'package:whatapp_tabbar/view/tabs/call_tabs.dart';
import 'package:whatapp_tabbar/view/tabs/camera_tab.dart';
import 'package:whatapp_tabbar/view/tabs/chat_tabs.dart';
import 'package:whatapp_tabbar/view/tabs/status_tab.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xff075E54),
          title: Text("WhatsApp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          actions: [
            Icon(Icons.search,color: Colors.white,size: 30,),
            SizedBox(width: 10,),
            Icon(Icons.more_vert,color: Colors.white,size: 30,),
            
          ],
          bottom: 
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALL",
              ),
            
            ]),
          ),
          body: TabBarView(children: [
            CameraTab(),
            ChatTabs(),
            StatusTab(),
            CallTabs(),
          ]),
        
      ),
    );
  }
}