import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'text_list.dart';

class TextListView extends StatefulWidget {
  final Function(int) changeIndexCallback;

  const TextListView({super.key, required this.changeIndexCallback});

  @override
  State<TextListView> createState() => _TextListViewState();
}

class _TextListViewState extends State<TextListView> {
  late Color color;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('did change dep ListView');
    color = Color(
      (math.Random().nextDouble() * 0xFFFFFF).toInt(),
    ).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    print('build ListView');
    final texts = TextList.of(context)?.textList;
    return ListView.builder(
      itemCount: texts?.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            widget.changeIndexCallback(index);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            color:
                TextList.of(context)?.indexElem == index ? color : Colors.grey,
            child: Text(texts![index]),
          ),
        );
      },
    );
  }
}
