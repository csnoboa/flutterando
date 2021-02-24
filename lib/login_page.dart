import 'package:flutter/material.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/logo.png'),
              ),
              Container(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, right: 12, top: 20, bottom: 12),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 15),
                      RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () {
                            if (email == 'caique2noboa@gmail.com' &&
                                password == '123') {
                              print('correto');
                              Navigator.of(context).pushNamed('/home');
                            } else {
                              print('senha errada');
                            }
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              'Entrar',
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child:
              Image.asset('assets/images/background.jfif', fit: BoxFit.cover)),
      Container(color: Colors.black.withOpacity((0.2))),
      _body()
    ]));
  }
}
