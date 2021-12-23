import 'package:appquiz/modules/controller/home_controller.dart';
import 'package:appquiz/modules/ui/butom.dart';
import 'package:appquiz/modules/ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class FimdasPerguntas extends StatelessWidget {
  const FimdasPerguntas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Quiz>(
      init: Quiz(),
      builder: (_) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Material(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(bottom: 30, left: 10, right: 10),
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Parabéns por concluir o Quiz",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Image.asset("imagens/festa.gif"),
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: constraints.maxWidth * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Acertos.: ${_.verdadeiras}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.green[600],
                          ),
                        ),
                        Text(
                          "Erros.: ${_.falsas}",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.red[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Buttom(
                      name: "Reiniciar",
                      funcao: () {
                        _.finalizarJogo();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      cor: Colors.green,
                      width: constraints.maxWidth * 0.6,
                      heigth: 50),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
