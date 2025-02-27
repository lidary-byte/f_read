import 'package:f_read/entity/book_source.dart';
import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

// ignore: must_be_immutable
class ItemBookSource extends StatelessWidget {
  BookSource bookSource;
  int index;
  ItemBookSource({super.key, required this.bookSource, required this.index});

  @override
  Widget build(BuildContext context) {
    return TDCheckbox(
      id: 'index:$index',
      title: bookSource.bookSourceName,
      checked: bookSource.enabled,
      onCheckBoxChanged: (selected) {
        bookSource.enabled = selected;
      },
      // titleMaxLine: 2,
      // subTitleMaxLine: 2,
      // subTitle: subTitle,
    );
  }
}
