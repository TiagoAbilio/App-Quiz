import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'dart:math';

class Quiz extends GetxController {
  List perguntas = [
    [
      [
        {
          "p": "A gestação dos cavalos-marinhos é feita pelos machos.",
          "r": "v",
        }
      ],
      [
        {
          "p":
              "Por causa do tamanho, as girafas ficam o tempo todo em pé e só se deitam quando vão dar à luz.",
          "r": "f",
        }
      ],
      [
        {
          "p":
              "Os ornitorrincos são os únicos mamíferos venenosos que se tem notícia.",
          "r": "f",
        }
      ],
      [
        {
          "p":
              "Os louva-a-deus são capazes de capturar aranhas, lagartos e até ratos.",
          "r": "v",
        }
      ],
      [
        {
          "p":
              "Apesar de serem os mais famosos, os morcegos não são os únicos mamíferos capazes de voar.",
          "r": "f",
        }
      ],
      [
        {
          "p": "o Alcemir e seu professor de programação VI",
          "r": "v",
        }
      ],
    ],
    [
      [
        {
          "p":
              "Existe uma espécie de pássaro que fica voando por até dez meses sem parar.",
          "r": "v",
        }
      ],
      [
        {
          "p":
              "Algumas arraias conseguem dar saltos de até três metros de altura.",
          "r": "v",
        }
      ],
      [
        {
          "p":
              "Os beija-flores são excelentes voadores, mas também conseguem usar suas patas para caminhar no solo.",
          "r": "f",
        }
      ],
      [
        {
          "p":
              "Um bicho-preguiça possui mais vértebras cervicais que um elefante ou uma girafa.",
          "r": "v",
        }
      ],
      [
        {
          "p":
              "Os golfinhos usam as toxinas liberadas pelos baiacus para ficarem doidões.",
          "r": "v",
        }
      ],
      [
        {
          "p": "o Alcemir e seu professor de programação VI",
          "r": "v",
        }
      ],
    ]
  ];

  List respostas = [];
  List mostrar = [0, 0, 0, 0, 0, 0];

  int verdadeiras = 0;
  int falsas = 0;

  int _indice = 0;
  int get indice => _indice;

  int _perguntaFeita = 0;
  int get perguntaFeita => _perguntaFeita;

  bool _fim = false;

  bool get fim => _fim;

  finalizarJogo() {
    respostas.clear();
    for (int i = 0; i < 6; i++) {
      mostrar[i] = 0;
      print(mostrar[i]);
    }
    verdadeiras = 0;
    falsas = 0;
    _perguntaFeita = 0;
    _fim = false;

    update(["tela", "perguntas"]);
  }

  sorteaPergunta() {
    _indice = Random().nextInt(2);
  }

  verificarResposta(String opcao) {
    if (perguntas[_indice][_perguntaFeita][0]["r"] == opcao) {
      respostas.add("v");
      verdadeiras++;
      mostrar[perguntaFeita] = 1;
    } else {
      mostrar[perguntaFeita] = 1;
      respostas.add("f");
      falsas++;
    }
    _perguntaFeita++;
    print(_perguntaFeita);
    if (_perguntaFeita == 6) {
      _fim = true;
      update(["tela"]);
    } else {
      update(["perguntas"]);
    }
  }
}
