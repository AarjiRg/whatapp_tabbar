

import 'package:flutter/material.dart';
import 'package:whatapp_tabbar/dummy_db.dart';

class CallTabs extends StatelessWidget {
  const CallTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(19),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
          children: [
             CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green.shade400,
               child: Stack(
                 children: [
                   Positioned(
                   top: 1,
                   left: 1,
                    bottom: 1,
                    right: 1,
                     child: Icon(Icons.link,color: Colors.white,)
                   )
                 ],
               ),
             ),
                       SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create Call Link",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Share a link for you Whatsapp Call",style: TextStyle(color: Colors.grey.shade400,fontSize: 12)),
                        
                      ],
                    ),
          ],
          
        ),
        SizedBox(height: 20,),
        Text("Recent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey.shade600)),
        SizedBox(height: 15,),
        Container(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>Row(
                    children: [
                     Container(
                       height: 60,
                             width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:Border.all(color: Colors.blueAccent,width: 2),
                        // color: Colors.blueAccent
                      ),
                       child: Stack(
                         children: [
                           Positioned(
                           top: 1,
                           left: 1,
                            bottom: 1,
                            right: 1,
                             child: Container(
                               height: 55,
                               width: 55,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(100),
                                 image:DecorationImage(image: NetworkImage(Calldb.calldb[index]["cpic"]),fit: BoxFit.cover)
                               ),
                             ),
                           )
                         ],
                       ),
                     ),
                       SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Calldb.calldb[index]["cname"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Row(
                            children: [
                              Icon(Icons.arrow_outward_rounded,color: Colors.green.shade500,),
                              Text(Calldb.calldb[index]["time"],style: TextStyle(color: Colors.grey.shade400,fontSize: 12)),
                            ],
                          ),
                          
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.video_call,color: Colors.green.shade500,)
                    
                    ],
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 20,), 
                  itemCount: StatusDb.statusDb.length),
        ),
          ],
          
        ),
      ),
    );
  }
}