import 'package:f_read/entity/book_source.dart';
import 'package:f_read/helper/book_source_helper.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

part 'book_shelf_store.g.dart';

class BookShelfStore = _BookShelfStore with _$BookShelfStore;

abstract class _BookShelfStore with Store {
  final TextEditingController urlEdit = TextEditingController();

  @observable
  List<BookSource> bookSource = [];

  @action
  parseUrl(String url, BuildContext context) async {
    TDToast.showLoading(context: context);
    try {
      bookSource = (await BookSourceHelper.importSource(url)) ?? [];
      if (!context.mounted) {
        return;
      }
      urlEdit.clear();
      TDToast.showSuccess('书源加载成功', context: context);
    } catch (e) {
      TDToast.showFail('加载失败', context: context);
    }
  }
}
