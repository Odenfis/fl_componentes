import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  //variables
  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.brown;
  BorderRadiusGeometry _borderRadius = BorderRadiusGeometry.circular(10);
  //método de acción
  void changeShape(){
    final random = Random();    
    //_width += 30;
    //_heigth += 30;
    //_color = Colors.deepOrange;
    //_borderRadius = BorderRadiusGeometry.circular(35);
    //---
    _width = random.nextInt(300).toDouble()+70;
    _heigth = random.nextInt(300).toDouble()+70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 1
      );
    _borderRadius = BorderRadiusGeometry.circular(random.nextInt(100)+10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor Animado', style: TextStyle(color: Colors.white),),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          curve: Curves.bounceOut,
          width: _width,
          height: _heigth,
          //color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeShape(),
        child: Icon(Icons.change_circle, color: Colors.white),
        ),
    );
  }
}