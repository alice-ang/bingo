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
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: List.generate(widget.size * widget.size, (int index) {
          return Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(3, 6),
              )
            ]),
            child: RawMaterialButton(
              key: ObjectKey(index.toString()),
              onPressed: () => {
                setState(() {
                  _clickedId = index;
                  _checkIsClicked(index);
                })
              },
              fillColor: _clickedTiles.contains(index)
                  ? Colors.amberAccent
                  : Colors.grey,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
                side: BorderSide(color: Colors.black, width: 2),
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
            ),
          );
        }),
      ),
    );
  }
}
