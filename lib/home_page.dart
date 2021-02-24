import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/280x280_RS/33/74/bd/3374bd4ca90568d7f940253322433b08.jpg',
                ),
              ),
              accountName: Text('Caique'),
              accountEmail: Text('caique2noboa@gmail.com'),
            ),
            ListTile(
              title: Text('Home'),
              subtitle: Text('Inicio'),
              leading: Icon(Icons.home),
              onTap: () {
                debugPrint('home');
              },
            ),
            ListTile(
              title: Text('Logout'),
              subtitle: Text('Finalizar sessão'),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contador: $counter'),
              CustomSwitch(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              counter++;
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
