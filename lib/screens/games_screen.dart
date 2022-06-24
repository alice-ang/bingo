import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key, this.gamesCount}) : super(key: key);

  final int? gamesCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircleBackground(
        childWidget: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: gamesCount ?? 3,
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
