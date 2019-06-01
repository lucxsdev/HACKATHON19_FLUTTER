import 'package:askflutter/post_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'new_post.dart';

      class Menu extends StatefulWidget
      {
        @override
        _MenuState createState() => _MenuState();
      }

      class _MenuState extends State<Menu>{
        @override
        Widget build(BuildContext context) {
          var assetsImage = new AssetImage("assets/test/user.jpg");
          var image = new Image(image: assetsImage, width:80.0, height:80.0);

          return Drawer(
              child: ListView(
                padding:EdgeInsets.zero,
                children:<Widget>[
                  DrawerHeader(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                      Center(
                        child: image
                      ),
                      Center(
                        child: Text("José Nelson")
                      )
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo/AskFlutter-logo.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter
                  ),
                ),
                  ),
                  ListTile(
                    title:Text("Novo Post"),
                    onTap: () {
                        Navigator.of(context)
                          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                            return new FormPage();
                          }));
                    }
                  ),
                  ListTile(
                    title:Text("Meus Posts"),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                            return new PostDetail();
                          }));
                    }
                  ),
                  ListTile(
                    title:Text("Pesquisar"),
                    onTap: () {

                    }
                  ),
                  ListTile(
                    title:Text("Categorias"),
                    onTap: () {
                      
                    }
                  ),
                  ListTile(
                    title:Text("Sair"),
                    onTap: () {
                      
                    }
                  )
                ]
              ),
          );
        }
      }