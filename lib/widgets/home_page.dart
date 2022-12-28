import 'package:flutter/material.dart';
import 'package:inherited_dependencies/widgets/text_list.dart';

import 'description_view.dart';
import 'text_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int counter = 0;

  void changeIndex(int value) {
    index = value;
    setState(() {});
  }

  void changeCounter() {
    setState(() {
      ++counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build HomePage');
    return TextList(
      indexElem: index,
      texts: _texts,
      child: Scaffold(
        appBar: AppBar(
          title: Text('$counter'),
          actions: [
            IconButton(
              onPressed: () {
                changeCounter();
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: Row(
          children: [
            Expanded(
              child: TextListView(changeIndexCallback: changeIndex),
            ),
            const VerticalDivider(
              width: 5,
            ),
            const Expanded(child: DescriptionView()),
          ],
        ),
      ),
    );
  }
}

const List<String> _texts = [
  'Consequat ipsum nulla fugiatlaboris',
  'ipsum dolor proident et aliquip',
  'aute sint ut anim eiusmod.',
];
