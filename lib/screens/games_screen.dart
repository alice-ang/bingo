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
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(4),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(3, 3),
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    border: const Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 3),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Truth or dare',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // const Image(
                                //   width: 100,
                                //   image: NetworkImage(
                                //       'https://live.staticflickr.com/3780/9134266649_3d2f1af95b_z.jpg'),
                                // ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'Truth or dare',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Feel free to spicfecn the wheel',
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
