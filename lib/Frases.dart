import 'package:flutter/material.dart';
import 'dart:math';

class Frases extends StatefulWidget {
  @override
  _FrasesState createState() => _FrasesState();
}

class _FrasesState extends State<Frases> {

  var _phrase = "Frase Inicial";

  List<String> _phrases = [
    "Lembre-se, o sucesso é uma jornanda, não um destino. Tenha"
        " fé em sua capacidade.",
    "Conhecimento sozinho não vale nada. Temos que aplicar. "
        "Querer não basta, temos que fazer.",
    "A maioria dos homens mais depressa nega uma verdade dura do "
        "do que a enfrenta.",
    "Todos precisamos ser alvos de zombaria de vez em quando, "
        "para evitar que comecemos a nos levar muito a sério.",
    "Chifre é igual picada de pernilongo: a picada nem dói, o "
        "problema é aquele zum zum zum todo."
  ];

  void _changePhrase(){
    int _index = Random().nextInt(_phrases.length);

    var _item = _phrases[_index];

    setState(() {
      _phrase = _item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases Motivacionais"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/note.jpg"),
            Text(
              _phrase,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
              ),
            ),
            FlatButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              color: Colors.green,
              onPressed: _changePhrase,
            )
          ],
        ),
      ),
    );
  }
}
