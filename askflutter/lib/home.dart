import 'package:flutter/material.dart';
import 'login.dart';
import 'menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("AskFlutter"),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {
            Navigator.of(context)
                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new LoginPage();
                  }));
      }, child: Text("Login"),
      shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
    )
        ],
        centerTitle: true,
      ),
      drawer:Menu(),
      body: Column(
        children:<Widget>[
          Text("Comunidade Flutter", textAlign: TextAlign.center,)
        ]
      )
    );
  }
}