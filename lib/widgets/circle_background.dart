import 'package:bingo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CircleBackground extends StatelessWidget {
  const CircleBackground({Key? key, required this.childWidget, this.color})
      : super(key: key);

  final Widget childWidget;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? const Color(0xfff5f2d9),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: <Widget>[
              Positioned(
                top: 90,
                right: 20,
                child: Circle(
                  color: Colors.pinkAccent.shade100,
                  size: 50.0,
                ),
              ),
              Positioned(
                top: 130,
                left: -50,
                child: Circle(
                  color: Colors.orange.shade600,
                  size: 150.0,
                ),
              ),
              Positioned(
                bottom: 130,
                left: 10,
                child: Circle(
                  color: Colors.yellow,
                  size: 90.0,
                ),
              ),
              Positioned(
                bottom: 30,
                right: -30,
                child: Circle(
                  color: Colors.deepPurpleAccent.shade100,
                  size: 150.0,
                ),
              ),
              childWidget,
            ]),
          ),
        ],
      ),
    );
  }
}
