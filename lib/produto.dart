// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectaaa/textfield.dart';
import 'relatorioProdutos.dart';


class Produto extends StatefulWidget {
  const Produto({Key? key}) : super(key: key);

  @override
  _ProdutoState createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "Cadastro de Produto",
        ),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              labelTextBuilder("ID"),
              textFieldInsumos(),
              labelTextBuilder("Nome"),
              textFieldInsumos(),
              labelTextBuilder("Insumos Consumidos"),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              labelTextBuilder("Unidade Métrica"),
              textFieldInsumos(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 55, left: 60),
                    child: Icon(
                      Icons.image_search,
                      size: 70,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 55, left: 30),
                    child: ElevatedButton(
                      onPressed: () {
                             Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctxt) => ProductResume()));
                      },
                      child: Text("Cadastrar"),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        primary: Colors.red,
                        minimumSize: Size(125, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
