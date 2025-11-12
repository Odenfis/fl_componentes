import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: (){}, 
          child: Text('PROCESAR', style: TextStyle(color: Colors.white, fontSize: 20),)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.cloud, color: Colors.white,)
        ),
    );
  }
}