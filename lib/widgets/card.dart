import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({Key? key, required this.header, this.title, this.subTitle})
      : super(key: key);

  final String header;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.red,
          child: Text(header),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 16),
              child: const Image(
                width: 100,
                image: NetworkImage(
                    'https://live.staticflickr.com/3780/9134266649_3d2f1af95b_z.jpg'),
              ),
            ),
            if (title != null && subTitle != null) ...[
              Expanded(
                child: Column(children: [
                  Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subTitle!,
                  )
                ]),
              ),
            ]
          ],
        )
      ],
    );
  }
}
