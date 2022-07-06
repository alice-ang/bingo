import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key, this.gamesCount}) : super(key: key);

  final int? gamesCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.black, width: 4)),
        backgroundColor: Colors.purple.shade100,
        title: const Text(
          'Games',
          style: TextStyle(color: Colors.black),
        ),
        leading: const NeuBackButton(),
      ),
      body: CircleBackground(
        childWidget: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const NeuCard(
                    header: 'Truth or dare',
                    title: 'Another title',
                    subTitle: 'Feel free to spin the wheel',
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
