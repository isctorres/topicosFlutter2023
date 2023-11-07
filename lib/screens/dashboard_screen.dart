import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 72, 12),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/'),
              ),
              accountName: Text('Rubensin Torres Frias :)'),
              accountEmail: Text('ruben.torres@itcelaya.edu.mx'),
            ),
            ListTile(
              title: Text('Conversor'),
              subtitle: Text('Temperatura'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.thermostat),
            )
          ],
        ),
      ),
    );
  }
}