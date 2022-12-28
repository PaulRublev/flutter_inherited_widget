import 'package:flutter/material.dart';

class TextList extends InheritedWidget {
  const TextList({
    super.key,
    required this.child,
    required this.indexElem,
    required this.texts,
  }) : super(child: child);

  final Widget child;
  final List<String> texts;
  final int indexElem;

  static TextList? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TextList>();
  }

  List<String> get textList => texts;

  @override
  bool updateShouldNotify(TextList oldWidget) {
    // return true;
    return oldWidget.indexElem != indexElem;
  }
}
