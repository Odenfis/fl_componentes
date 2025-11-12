import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});
  

  void displayDialogAndroid(BuildContext context){
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

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder:(context) {
        return CupertinoAlertDialog(
          title: Text('Alerta Importante'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Por favor revisar si su contenido está bien escrito'),
              SizedBox(height: 15),
              FlutterLogo(size: 80)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar'))
          ],
        );
      }, 
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: () => Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context),          
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