import 'package:fl_componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card Widget',
          style: TextStyle(
            color: AppTheme.textosBlancos
          ),
          ),
      ),
      body: ListView(
        children: [
          Card()
        ],
      )
    );
  }
}