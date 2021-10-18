// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:projectaaa/textfield.dart';

class ProductResume extends StatefulWidget {
  const ProductResume({Key? key}) : super(key: key);

  @override
  _ProductResumeState createState() => _ProductResumeState();
}

class _ProductResumeState extends State<ProductResume> {
  bool _checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            "Cadastro de Produto",
          ),
        ),
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Row(
              children: [
                gridRelatorio("             ID    |"),
                gridRelatorio("  Nome do Produto   |"),
                gridRelatorio("  Qtd.  |"),
                gridRelatorio("   Semanal")
              ],
            ),
            Row(
              children: [
                Text(
                  " _________________________________________________________",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = false;
                    });
                  },
                ),
                gridRelatorio("01"),
                gridRelatorio("        Pizza"),
                gridRelatorio("                            4"),
                gridRelatorio("            67%"),
              ],
            ),
             Row(
              children: [
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = false;
                    });
                  },
                ),
                gridRelatorio("02"),
                gridRelatorio("        Hamburger"),
                gridRelatorio("                 5"),
                gridRelatorio("            33%"),
              ],
            ),
             Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: ElevatedButton(
                      onPressed: () {
                  },
                      child: Text("Ordenar Produção"),
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
        ));
  }
}
