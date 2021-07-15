import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Parabéns';
    } else if (pontuacao < 16) {
      return 'Você é bom';
    } else if (pontuacao < 25) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 20),
        )),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            elevation: 15,
            shadowColor: Colors.amber
          ),
          child: Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
