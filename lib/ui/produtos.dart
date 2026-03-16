import 'package:flutter/material.dart';
import '/models/produto.dart';

class Produtos extends StatefulWidget {
  const Produtos({super.key});

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  List<Produto> produtos = [];

  @override
  void initState() {
    super.initState();
    produtos.add(Produto(1, "Lapis", "Lapis Preto", 1.99));
    produtos.add(Produto(2, "Borracha", "Borracha branca", 3.49));
    produtos.add(Produto(3, "Caneta", "Caneta Bic Azul", 4.99));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Produtos")),
      body: ListView.separated(
        itemBuilder: (context, i) {
          return ListTile(
            leading: Text(produtos[i].id.toString()),
            title: Text(produtos[i].nome),
            subtitle: Text(produtos[i].descricao),
            trailing: Text(produtos[i].preco.toStringAsFixed(2)),
          );
        },
        separatorBuilder: (_, _) => Divider(),
        itemCount: produtos.length,
      ),
    );
  }
}
