import 'package:flutter/material.dart';

late Size mediaSize;

class ConstruirTop extends StatelessWidget {  
  const ConstruirTop({super.key});  
  @override  
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return SizedBox(
      width: mediaSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.location_city,
            size: 100,
            color: Colors.white,
            )
        ],
      ),
    );
  }
}