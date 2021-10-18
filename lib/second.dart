// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projectaaa/textfield.dart';
import 'produto.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "Cadastro de Inusmos",
        ),
      ),
      body: 
         SizedBox.expand(
          child:SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              labelTextBuilder("ID"),
              textFieldInsumos(),
              labelTextBuilder("Nome"),
              textFieldInsumos(),
              labelTextBuilder("Unidade Métrica"),
              textFieldInsumos(),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 60),
                    child: Icon(
                      Icons.image_search,
                      size: 70,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80, left: 30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctxt) => Produto()));
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
