import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostDetail extends StatefulWidget
{
  @override
  _PostDetail createState() => _PostDetail();
}

class _PostDetail extends State<PostDetail>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Detalhes do Post"),
        ),
        body: ListView(
        children: <Widget>[
          Text("Dúvida principal sobre widgets Flutter\n", 
            style: TextStyle(fontSize: 28.5),
          ),
          Text("Comentário 1 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n"),
          Text("Comentário 2 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 3 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 4 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 5 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 6 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 7 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 8 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 9 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
          Text("Comentário 10 BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n"),
            FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () {
            },
            child: Text(
              "Participe do Chat ao vivo!",
              style: TextStyle(fontSize: 20.20),
            ),
          )
        ],
      )
    );
  }
}