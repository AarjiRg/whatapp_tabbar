import 'package:flutter/material.dart';
import 'package:whatapp_tabbar/dummy_db.dart';

class ChatTabs extends StatelessWidget {
  const ChatTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
      itemBuilder: (context, index) => Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(DummyDb.chatList[index]["imageurl"]),
            radius: 25,
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(DummyDb.chatList[index]["name"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Text(DummyDb.chatList[index]["message"],style: TextStyle(color: Colors.grey),)
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(DummyDb.chatList[index]["time"],style: TextStyle(fontWeight: FontWeight.bold),),
              DummyDb.chatList[index]["count"]=="0"?SizedBox():
              CircleAvatar(
                backgroundColor: Colors.lightGreen,
                radius: 12,
                child: Text(DummyDb.chatList[index]["count"]),
              ),
            ],
          )
        ],
      ),
    separatorBuilder: (context, index) => SizedBox(height: 20,),
      itemCount: DummyDb.chatList.length,
    );
  }
}