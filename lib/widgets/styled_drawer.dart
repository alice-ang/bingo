import 'package:bingo/screens/screens.dart';
import 'package:bingo/widgets/circle_background.dart';
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
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(80)),
                border: Border.all(color: Colors.black, width: 3),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.amber.shade300,
                        border: Border.all(color: Colors.black, width: 4),
                      ),
                      child: const Text(
                        'Alice Anglesj??',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                margin: const EdgeInsets.only(top: 24, right: 24, left: 24),
                decoration: BoxDecoration(
                    color: Colors.white,
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GamesScreen(),
                      ),
                    );
                  },
                  style: ListTileStyle.list,
                  title: Center(
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              );
            },
            childCount: 4,
          ),
        ),
      ]),
    );
  }
}
