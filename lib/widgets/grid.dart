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
    return GridView.count(
      padding: const EdgeInsets.all(12),
      shrinkWrap: true,
      crossAxisCount: widget.size,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children: List.generate(widget.size * widget.size, (int index) {
        return Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                boxShadow: [
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
              fillColor:
                  _clickedTiles.contains(index) ? Colors.yellow : Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                side: BorderSide(color: Colors.black, width: 2),
              ),
              child: Center(
                child: Text(
                  'Rule ${index + 1}',
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ));
      }),
    );
  }
}
