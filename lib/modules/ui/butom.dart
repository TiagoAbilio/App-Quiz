import 'package:flutter/material.dart';

class Buttom extends StatefulWidget {
  final String name;
  final Function funcao;
  final Color cor;
  final double width;
  final double heigth;

  Buttom(
      {required this.name,
      required this.funcao,
      required this.cor,
      required this.width,
      required this.heigth});

  @override
  State<Buttom> createState() => _ButtomState();
}

class _ButtomState extends State<Buttom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.funcao();
      },
      child: Container(
        alignment: Alignment.center,
        color: widget.cor,
        width: widget.width,
        height: widget.heigth,
        child: Text(
          widget.name,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
