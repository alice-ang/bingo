import 'package:flutter/material.dart';

class NeuCard extends StatelessWidget {
  const NeuCard(
      {Key? key, required this.header, this.title, this.subTitle, this.imgUrl})
      : super(key: key);

  final String header;
  final String? title;
  final String? subTitle;
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
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
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      border: const Border(
                        bottom: BorderSide(color: Colors.black, width: 3),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          header,
                          style: const TextStyle(
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
                  if (imgUrl != null) ...[
                    const Image(
                      width: 100,
                      image: NetworkImage(
                          'https://live.staticflickr.com/3780/9134266649_3d2f1af95b_z.jpg'),
                    ),
                  ],
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        children: [
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
