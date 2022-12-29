import 'package:flutter/material.dart';

class TextList extends InheritedWidget {
  const TextList({
    super.key,
    required this.child,
    required this.indexElem,
    required this.texts,
    required this.changeIndex,
  }) : super(child: child);

  final Widget child;
  final List<String> texts;
  final int indexElem;
  final Function(int) changeIndex;

  static TextList? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TextList>();
  }

  List<String> get textList => texts;

  String get text => texts[indexElem];

  @override
  bool updateShouldNotify(TextList oldWidget) {
    return oldWidget.indexElem != indexElem;
  }
}
