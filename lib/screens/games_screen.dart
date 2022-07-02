import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key, this.gamesCount}) : super(key: key);

  final int? gamesCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
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
                childCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
