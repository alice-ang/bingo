import 'package:flutter/material.dart';

class StyledDrawer extends StatefulWidget {
  StyledDrawer({Key? key}) : super(key: key);

  @override
  State<StyledDrawer> createState() => _DrawerState();
}

class _DrawerState extends State<StyledDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xfff5f2d9),
      child: Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade300,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(100)),
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: const Text(
                  'Hello!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                  padding: const EdgeInsets.only(right: 24, left: 24),
                  children: List.generate(
                    4,
                    (int index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 24),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent.shade200,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(0),
                            ),
                            border: Border.all(color: Colors.black, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: Offset(3, 6),
                              )
                            ]),
                        child: ListTile(
                          style: ListTileStyle.list,
                          title: Center(
                              child: Text(
                            'Item ${index + 1}',
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                          )),
                        ),
                      );
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
