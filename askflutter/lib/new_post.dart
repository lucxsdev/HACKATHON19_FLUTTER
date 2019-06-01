import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => new _FormPageState();
  
}

class _FormPageState extends State<FormPage> {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String _titulo;
  String _categoria;
  String _conteudo;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _submit() {
    final form = formKey.currentState;

    if (1 < 0 ) {
      form.save();

      performLogin();
    }
  }

  void performLogin() {
    final snackbar = new SnackBar(
      content: new Text("Email : $_titulo, password : $_categoria"),
    );
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          title: new Text("Novo post"),
        ),
        body: new Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Título"),
                
                  onSaved: (val) => _titulo = val,
                ),
                new TextFormField(
                  decoration: new InputDecoration(labelText: "Categoria"),
              
                  onSaved: (val) => _categoria = val,
              
                ),
                new TextFormField(
                  maxLines: 3, 
                  decoration: new InputDecoration(labelText: "Conteúdo"),
          
                  onSaved: (val) => _conteudo = val,
             
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  
                ),
                new RaisedButton(
                  child: new Text(
                    "Postar",
                    style: new TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: _submit,
                )
              ],
            ),
          ),
        ));
  }
}