import 'dart:math';

import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key, required this.size}) : super(key: key);

  final int size;

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  int _clickedId = 0;
  bool isCrossed = true;

  final List bingoNumbers =
      List<int>.generate(16, (i) => Random().nextInt(100));

  bool _checkIsClicked(idx) {
    if (_clickedId == idx && isCrossed) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: widget.size,
      children: List.generate(widget.size * widget.size, (int index) {
        return RawMaterialButton(
          key: ObjectKey(index.toString()),
          onPressed: () => {
            print(bingoNumbers),
            setState(() {
              _clickedId = index;
            })
          },
          fillColor: _checkIsClicked(index)
              ? const Color.fromARGB(255, 37, 43, 50)
              : const Color(0x00191c1e),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
              side: BorderSide(
                  color: Color.fromARGB(255, 37, 43, 50), width: 0.5)),
          child: Center(
            child: Text(
              '${bingoNumbers[index]}',
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        );
      }),
    ));
  }
}
