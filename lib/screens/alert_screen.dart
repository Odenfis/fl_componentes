import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});
  

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: true, //permitir cierre del showDialog
      context: context, 
      builder:(context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
        title: Text('Alerta de Proceso'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es el contenido de mi alerta')
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text('Cancelar', style: TextStyle(fontSize: 17),))
        ],
      ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => displayDialog(context), 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text('PROCESAR', style: TextStyle(color: Colors.white, fontSize: 20),),
          )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.cloud, color: Colors.white,)
        ),
    );
  }
}