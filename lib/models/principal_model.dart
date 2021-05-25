import 'dart:convert';
import 'package:http/http.dart';

class Cardapio {
  final int lancheId;
  final String imagem;
  final String nome;
  final String descricao;
  final double preco;

  Cardapio({this.lancheId, this.imagem, this.nome, this.descricao, this.preco});

  factory Cardapio.fromJson(Map json) {
    return Cardapio(
      lancheId: json['lancheId'],
      imagem: json['imagem'],
      nome: json['nome'],
      descricao: json['descricao'],
      preco: json['preco'],
    );
  }

// Método para buscar enderecos:
  static Future<List<Cardapio>> obterDados() async {
    var url = Uri.parse('https://api.senac.estevaorada.com/sistema/cardapio/lanches');
    // Chamada assíncrona:
    var resposta = await get(url);
    var json = jsonDecode(resposta.body);

    List<Cardapio> listaresultado =
        List<Cardapio>.from(json.map((i) => Cardapio.fromJson(i)));
    return listaresultado;
  }
}
