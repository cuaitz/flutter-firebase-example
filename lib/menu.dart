import 'package:firebase_example/messagesFirestore.dart';
import 'package:flutter/material.dart';
import 'tela_Adicionar.dart';
import 'tela_consulta.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Firestore"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed:(){
            _abreTelaAdicionar(context, TelaAdicionar());
            } ,
            tooltip: 'Clique para adicionar registros',
          ),
          IconButton(
            icon: Icon(Icons.line_style),
            onPressed:(){
              _abreTelaListar(context, TelaConsulta());
            },
            tooltip: 'Clique para visualizar os registros',
          ),
          IconButton(
            icon: Icon(Icons.new_label),
            onPressed:(){
              _abreTelaListar(context, MensagensFirestore('Eu', 'Vc'));
            },
            tooltip: 'Clique para visualizar os registros',
          )
        ],
      ),

    );
  }

  _abreTelaAdicionar(ctx, page){
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }));
  }

  _abreTelaListar(ctx, page){
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }));
  }
}
