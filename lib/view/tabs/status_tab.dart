import 'package:flutter/material.dart';
import 'package:whatapp_tabbar/dummy_db.dart';


class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

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
             Container(
                       height: 60,
                             width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:Border.all(color: Colors.grey.shade500,width: 2),
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
                                 image:DecorationImage(image: NetworkImage("https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),fit: BoxFit.cover)
                               ),
                             ),
                           )
                         ],
                       ),
                     ),
                       SizedBox(width: 15,),
                    Column(
                      children: [
                        Text("My Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Text("Today,12:30 am",style: TextStyle(color: Colors.grey.shade400,fontSize: 12)),
                        
                      ],
                    ),
                    Spacer(),
                 Icon(Icons.more_vert,size: 24,)   
          ],
          
        ),
        SizedBox(height: 20,),
        Text("Recent Updates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey.shade600)),
        SizedBox(height: 15,),
        Container(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>StatusupdatedDb.statusupDb[index]["status"]=="up"? Row(
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
                                 image:DecorationImage(image: NetworkImage(StatusupdatedDb.statusupDb[index]["sPic"]),fit: BoxFit.cover)
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
                          Text(StatusupdatedDb.statusupDb[index]["sName"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(StatusupdatedDb.statusupDb[index]["time"],style: TextStyle(color: Colors.grey.shade400,fontSize: 12)),
                          
                        ],
                      ),
                    ],
                  ):null,
                  separatorBuilder: (context, index) => SizedBox(height: 20,), 
                  itemCount: StatusupdatedDb.statusupDb.length),
        ),
        SizedBox(height: 15,),
            Text("Viewed Updates",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey.shade600)),
         SizedBox(height: 15,),
        Container(
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>StatusDb.statusDb[index]["status"]=="viewed"? Row(
                    children: [
                     Container(
                       height: 60,
                             width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border:Border.all(color: Colors.grey
                        .shade500,width: 2),
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
                                 image:DecorationImage(image: NetworkImage(StatusDb.statusDb[index]["sPic"]),fit: BoxFit.cover)
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
                          Text(StatusDb.statusDb[index]["sName"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                          Text(StatusDb.statusDb[index]["time"],style: TextStyle(color: Colors.grey.shade400,fontSize: 12)),
                          
                        ],
                      ),
                    ],
                  ):null,
                  separatorBuilder: (context, index) => SizedBox(height: 20,), 
                  itemCount: StatusDb.statusDb.length),
        ),
          ],
          
        ),
      ),
    );
        
  }
}