import 'package:entrada_dados/campoTexto.dart';
import 'package:entrada_dados/entradaCheckbox.dart';
import 'package:entrada_dados/entradaRadioButton.dart';
import 'package:entrada_dados/entradaSlider.dart';
import 'package:entrada_dados/entradaSwitch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: CampoTexto(),
    //home: EntradaCheckbox(),
    //home: EntradaRadioButton(),
    //home: EntradaSwitch(),
    home: EntradaSlider(),
  ));
}
