import 'package:flutter/material.dart';

class CameraTab extends StatelessWidget {
  const CameraTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:double.infinity,
        decoration:BoxDecoration(
          color: Colors.black
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_rounded,color: Colors.white,size: 50,),
            Text("camera",style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}