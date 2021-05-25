import 'package:flutter/material.dart';

class ItemPrato extends StatelessWidget {
  final int lancheId;
  final String imagem;
  final String nome;
  final String descricao;
  final double preco;

  const ItemPrato(
      {Key key,
      this.lancheId,
      this.imagem,
      this.nome,
      this.descricao,
      this.preco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: double.infinity,
        child: Card(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.network(
                    imagem,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ID: $lancheId"),
                  Text(
                    nome,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                      child: Container(
                    constraints: BoxConstraints(minHeight: 10, maxWidth: 190),
                    // height: 50,
                    // width: 190,
                    child: Text(descricao),
                  )),
                  Text("Preço: $preco"),
                ],
              )
            ],
          ),
        )));
  }
}
