import 'package:flutter/material.dart';
import 'menu.dart';
import 'package:askflutter/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String login;
        String senha;
                return Scaffold(
                    appBar: AppBar(
                      title: Text("AskFlutter"),
                      centerTitle: true,
                    ),
                    drawer: Menu(),
                    body: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          onSaved: (val) => login = val,
                      decoration: InputDecoration(labelText: 'Usuário'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      obscureText: true,
                      onSaved: (val) => senha = val,
              decoration: InputDecoration(labelText: 'Senha'),
            ),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                    if ((login == '123') && (senha == '123')) {
                      return new HomePage();
                    } else {
                      return new LoginPage();
                    }
              }));
            },
            child: Text(
              "Entrar",
              style: TextStyle(fontSize: 20.20),
            ),
          )
        ]));
  }
}
