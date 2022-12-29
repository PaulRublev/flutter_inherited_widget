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

  void changeIndex(int value) {
    if (index != value) {
      index = value;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    print('build HomePage');
    return TextList(
      changeIndex: changeIndex,
      indexElem: index,
      texts: _texts,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: Row(
          children: const [
            Expanded(
              child: TextListView(),
            ),
            VerticalDivider(
              width: 5,
            ),
            Expanded(child: DescriptionView()),
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
