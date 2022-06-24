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
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return const NeuCard(
                    header: 'Truth or dare',
                    title: 'Another title',
                    subTitle: 'Feel free to spin the wheel',
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
