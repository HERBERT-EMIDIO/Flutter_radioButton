import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de Guitarras"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text("Stratocaster"),
              subtitle: Text("Blues, Rock, Funk"),
              value: 'Strato',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
                print("Resultado: $escolha");
              },
            ),
            RadioListTile(
              title: Text("Les Paul"),
              subtitle: Text("Blues, Rock"),
              value: 'Les',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
                print("Resultado: $escolha");
              },
            ),
            RadioListTile(
              title: Text("TeleCaster"),
              subtitle: Text("Country, Blues, Rock, Jazz"),
              value: 'Tele',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
                print("Resultado: $escolha");
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("modelos escolhido: $_escolhaUsuario");
              },
              child: Text("Salvar"),
            ),

            /* Radio(
              value: 'M',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
               
              },
            ),
            Text("Feminino"),
            Radio(
              value: 'F',
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
                print("Resultado $escolha");
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
