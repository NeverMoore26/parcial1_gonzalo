import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'info_screen.dart';
import 'about_screen.dart';
import 'navigation_screen.dart';
import 'dashboard_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blueGrey, // Color personalizado para la AppBar
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            _buildCard('Login', Icons.login, () => LoginScreen(), context),
            _buildCard('Registro', Icons.app_registration,
                () => RegisterScreen(), context),
            _buildCard('Información', Icons.info, () => InfoScreen(), context),
            _buildCard('About', Icons.help, () => AboutScreen(), context),
            _buildCard('Navegación', Icons.navigation, () => NavigationScreen(),
                context),
            _buildCard(
                'Dashboard', Icons.dashboard, () => DashboardScreen(), context),
          ],
        ),
      ),
    );
  }

  Card _buildCard(String title, IconData icon, Widget Function() page,
      BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 40, color: Colors.blueGrey),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
