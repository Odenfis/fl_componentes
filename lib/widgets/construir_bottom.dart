import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConstruirBottom extends StatelessWidget {
   
  const ConstruirBottom({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.all(30),
          child: Column(
            children: [
              Text('esto es una'),
              Text('prueba'),
              Text('prueba'),
              Text('prueba'),
              Text('prueba')
            ],
          ),
          ),
      ),
    );
  }
}