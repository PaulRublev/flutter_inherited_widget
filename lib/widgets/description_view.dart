import 'package:flutter/material.dart';

import 'text_list.dart';

class DescriptionView extends StatefulWidget {
  const DescriptionView({super.key});

  @override
  State<DescriptionView> createState() => _DescriptionViewState();
}

class _DescriptionViewState extends State<DescriptionView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('did change dep Description');
  }

  @override
  Widget build(BuildContext context) {
    print('build Description');
    return Center(
      child: Text(
        TextList.of(context)!.text,
      ),
    );
  }
}
