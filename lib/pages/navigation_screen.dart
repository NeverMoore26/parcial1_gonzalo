import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegación"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Text(
          'Pantalla de Navegación',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
