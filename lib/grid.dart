// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  int size = 3;
  var clickedId;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: size,
      children: List.generate(size * size, (int index) {
        return RawMaterialButton(
          onPressed: () => {
            setState(() {
              clickedId = index;
            })
          },
          fillColor: clickedId == index ? Colors.red : Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
              side: BorderSide(color: Colors.black, width: 0.5)),
          child: const Center(
            child: Text(
              'hello',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        );
      }),
    ));
  }
}
