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
  bool isCrossed = true;

  bool _stayClicked(idx) {
    if (clickedId == idx && isCrossed) {
      return true;
    }
    return false;
  }

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
          fillColor: _stayClicked(index)
              ? const Color.fromARGB(255, 37, 43, 50)
              : const Color(0x00191c1e),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
              side: BorderSide(
                  color: Color.fromARGB(255, 37, 43, 50), width: 0.5)),
          child: const Center(
            child: Text(
              'hello',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        );
      }),
    ));
  }
}
