//import 'package:fl_componentes/themes/app_theme.dart';
import 'package:fl_componentes/widgets/construir_top.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //variables
  late Color myColor;
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {

    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: AssetImage('assets/wallpaper2.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(myColor.withValues(alpha: 0.9), BlendMode.darken)         
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 70,
              child: ConstruirTop()
              )
          ],
        ),
      ),
    );
    
  }
}