import 'package:bingo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircleBackground(
        childWidget: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://live.staticflickr.com/3780/9134266649_3d2f1af95b_z.jpg'),
                      ),
                      trailing: const Text(
                        "GFG",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                      title: Text("List item $index"),
                      subtitle: Text("List item $index"),
                      horizontalTitleGap: 50.0,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
