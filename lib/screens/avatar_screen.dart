import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Walter Moncada', style: TextStyle(color: Colors.white)),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.amberAccent,
              child: Text('WM'),
            ),
          )
        ],
      ),
      body: Center(
         child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/pt/9/92/Shinji_Ikari.png'),
         ),
      ),
    );
  }
}