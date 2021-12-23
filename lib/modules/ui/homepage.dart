import 'package:appquiz/modules/controller/home_controller.dart';
import 'package:appquiz/modules/ui/aviso.dart';
import 'package:appquiz/modules/ui/butom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(Quiz());

  @override
  void initState() {
    controller.sorteaPergunta();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Quiz>(
      id: "tela",
      init: Quiz(),
      builder: (_) {
        if (_.fim) {
          return FimdasPerguntas();
        } else {
          return LayoutBuilder(
            builder: (context, contraints) => Scaffold(
              body: Stack(
                children: [
                  Container(
                    color: Colors.white,
                  ),
                  Container(
                    width: contraints.maxWidth,
                    height: contraints.maxHeight,
                    color: Colors.black54,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: contraints.maxWidth * 0.7,
                            height: contraints.maxHeight * 0.5,
                            child: GetBuilder<Quiz>(
                              id: "perguntas",
                              builder: (_) => Text(
                                _.perguntas[_.indice][_.perguntaFeita][0]["p"]
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                        Buttom(
                            name: "True",
                            funcao: () {
                              _.verificarResposta("v");
                            },
                            cor: Colors.green,
                            width: contraints.maxWidth * 0.8,
                            heigth: 60),
                        const SizedBox(
                          height: 25,
                        ),
                        Buttom(
                            name: "False",
                            funcao: () {
                              _.verificarResposta("f");
                            },
                            cor: Colors.red,
                            width: contraints.maxWidth * 0.8,
                            heigth: 60),
                      ],
                    ),
                  ),
                  GetBuilder<Quiz>(
                    id: "perguntas",
                    builder: (_) => Positioned(
                      bottom: 8,
                      left: 8,
                      child: _.mostrar[0] == 0
                          ? Container()
                          : Icon(
                              _.respostas[0] == "v"
                                  ? Icons.check_sharp
                                  : Icons.close,
                              color: _.respostas[0] == "v"
                                  ? Colors.green
                                  : Colors.red,
                              size: 25,
                            ),
                    ),
                  ),
                  GetBuilder<Quiz>(
                    id: "perguntas",
                    builder: (_) => Positioned(
                      bottom: 8,
                      left: 30,
                      child: _.mostrar[1] == 0
                          ? Container()
                          : Icon(
                              _.respostas[1] == "v"
                                  ? Icons.check_sharp
                                  : Icons.close,
                              color: _.respostas[1] == "v"
                                  ? Colors.green
                                  : Colors.red,
                              size: 25,
                            ),
                    ),
                  ),
                  GetBuilder<Quiz>(
                    id: "perguntas",
                    builder: (_) => Positioned(
                      bottom: 8,
                      left: 52,
                      child: _.mostrar[2] == 0
                          ? Container()
                          : Icon(
                              _.respostas[2] == "v"
                                  ? Icons.check_sharp
                                  : Icons.close,
                              color: _.respostas[2] == "v"
                                  ? Colors.green
                                  : Colors.red,
                              size: 25,
                            ),
                    ),
                  ),
                  GetBuilder<Quiz>(
                    id: "perguntas",
                    builder: (_) => Positioned(
                      bottom: 8,
                      left: 74,
                      child: _.mostrar[3] == 0
                          ? Container()
                          : Icon(
                              _.respostas[3] == "v"
                                  ? Icons.check_sharp
                                  : Icons.close,
                              color: _.respostas[3] == "v"
                                  ? Colors.green
                                  : Colors.red,
                              size: 25,
                            ),
                    ),
                  ),
                  GetBuilder<Quiz>(
                    id: "perguntas",
                    builder: (_) => Positioned(
                      bottom: 8,
                      left: 96,
                      child: _.mostrar[4] == 0
                          ? Container()
                          : Icon(
                              _.respostas[4] == "v"
                                  ? Icons.check_sharp
                                  : Icons.close,
                              color: _.respostas[4] == "v"
                                  ? Colors.green
                                  : Colors.red,
                              size: 25,
                            ),
                    ),
                  ),
                  GetBuilder<Quiz>(
                    id: "perguntas",
                    builder: (_) => Positioned(
                      bottom: 8,
                      left: 118,
                      child: _.mostrar[5] == 0
                          ? Container()
                          : Icon(
                              _.respostas[5] == "v"
                                  ? Icons.check_sharp
                                  : Icons.close,
                              color: _.respostas[5] == "v"
                                  ? Colors.green
                                  : Colors.red,
                              size: 25,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
