import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key, required this.size}) : super(key: key);

  final int size;

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  int _clickedId = 0;
  bool isCrossed = false;
  final List _clickedTiles = [];

  bool _checkIsClicked(idx) {
    if (_clickedId == idx && !_clickedTiles.contains(idx)) {
      _clickedTiles.add(idx);
      return true;
    }
    if (_clickedTiles.contains(idx)) {
      _clickedTiles.remove(idx);
    }
    return false;
  }

  bool _checkWin(idx) {
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
              setState(() {
                _clickedId = index;
                _checkIsClicked(index);
              })
            },
            fillColor: _clickedTiles.contains(index)
                ? Colors.amberAccent
                : const Color(0x00191c1e),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(0),
              ),
              side: BorderSide(
                  color: Color.fromARGB(255, 37, 43, 50), width: 0.5),
            ),
            child: Center(
              child: Text(
                'Rule ${index + 1}',
                style: TextStyle(
                    fontSize: 16,
                    color: _clickedTiles.contains(index)
                        ? Colors.black
                        : Colors.white),
              ),
            ),
          );
        }),
      ),
    );
  }
}
