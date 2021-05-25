import 'package:flutter/material.dart';
import 'package:dracula_burger/views/components/titulo.dart';
import 'package:dracula_burger/models/principal_model.dart';
import 'package:dracula_burger/views/components/item_prato.dart';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio Drácula Burguer'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://st2.depositphotos.com/1006689/10154/v/950/depositphotos_101545822-stock-illustration-vampire-dracula-vector-icon.jpg',
                width: 100,
                height: 100,
              ),
              Column(
                children: [
                  Titulo(txt: 'Bem-Vindo ao Drácula Burguer',)
                ],
              )
            ],
          ),
          Expanded(
              child: FutureBuilder(
            future: Cardapio.obterDados(),
            builder: (context, r) {
              if (r.hasData) {
                return ListView.builder(
                    itemCount: r.data.length,
                    itemBuilder: (context, i) {
                      return ItemPrato(
                        nome: r.data[i].nome,
                        descricao: r.data[i].descricao,
                        preco: r.data[i].preco,
                        lancheId: r.data[i].lancheId,
                        imagem: r.data[i].imagem,
                      );
                    });
              } else {
                return Text("Carregando . . .");
              }
            },
          ))
        ],
      ),
    );
  }
}
