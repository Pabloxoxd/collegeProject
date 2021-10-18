// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';

Widget textFieldBuilder(TextInputType inputType, String placeholder) {
  return Padding(
      padding: EdgeInsets.only(top: 35),
      child: SizedBox(
        width: 300,
        child: TextField(
          keyboardType: inputType,
          decoration: InputDecoration(
            labelText: "$placeholder",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ));
}

Widget labelTextBuilder(
  String labelText,
) {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Text(
      "$labelText",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}

Widget textFieldInsumos() {
  return Padding(
    padding: EdgeInsets.only(
      top: 20,
    ),
    child: SizedBox(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    ),
  );
}

Widget labelTextInsumos(String labelText) {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Text(
      "$labelText",
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}

Widget gridRelatorio(String labelText) {
  return Padding(
    padding: EdgeInsets.only(top: 15),
    child: Text(
      "$labelText",
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
      ),
    ),
  );
}

Widget checkBoxBuild(bool _checkbox) {
  return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Checkbox(
        value: _checkbox,
        onChanged: (value) {

        },
      ));
}
