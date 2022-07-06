import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Grid extends StatefulWidget {
  const Grid(
      {Key? key,
      required this.size,
      this.gridColor = Colors.white,
      this.tileColor = Colors.yellow,
      this.rule})
      : super(key: key);

  final int size;
  final Color? gridColor;
  final Color? tileColor;
  final String? rule;
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  int _clickedId = 0;
  bool isCrossed = false;
  final List _clickedTiles = [];

  double getSpacing(size) {
    switch (size) {
      case 3:
        return 12;
      case 4:
        return 8;
      case 5:
        return 8;
      default:
        return 0;
    }
  }

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
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      crossAxisCount: widget.size,
      crossAxisSpacing: getSpacing(widget.size),
      mainAxisSpacing: getSpacing(widget.size),
      children: List.generate(
        widget.size * widget.size,
        (int index) {
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
              ],
            ),
            child: TextButton(
              key: ObjectKey(index.toString()),
              onPressed: () => {
                setState(
                  () {
                    _clickedId = index;
                    _checkIsClicked(index);
                  },
                )
              },
              style: TextButton.styleFrom(
                backgroundColor: _clickedTiles.contains(index)
                    ? widget.tileColor
                    : widget.gridColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  side: BorderSide(color: Colors.black, width: 2),
                ),
              ),
              child: const Center(
                child: AutoSizeText(
                  '"Youre tearing me apart Lisa!"',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
