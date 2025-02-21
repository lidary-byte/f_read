import 'package:f_read/db/objectbox.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/helper/book_source_helper.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'book_source_store.g.dart';

class BookSourceStore = _BookSourceStore with _$BookSourceStore;

abstract class _BookSourceStore with Store {
  // 本地已保存的书源
  @observable
  List<BookSource> localBookSource = [];

  @observable
  List<BookSource> bookSource = [];

  _BookSourceStore() {
    querySqlBookSource();
    // Objectbox.createBookSourceBox().then((box) {
    //   // final box = await Objectbox.createBookSourceBox();
    //   final queryBuild = box.query().build();
    //   localBookSource = queryBuild.find();
    //   queryBuild.close();
    // });
  }

  @action
  parseUrl(String url, BuildContext context) async {
    // TDToast.showLoading(context: context);
    // try {
    //   bookSource = (await BookSourceHelper.importSource(url)) ?? [];
    //   if (!context.mounted) {
    //     return;
    //   }
    //   urlEdit.clear();
    //   TDToast.showSuccess('书源加载成功', context: context);
    // } catch (e) {
    //   TDToast.showFail('加载失败', context: context);
    // }
    return bookSource = (await BookSourceHelper.importSource(url)) ?? [];
  }

  insertBookSouce() async {
    final box = await Objectbox.createBookSourceBox();
    box.putMany(bookSource);
    bookSource.clear();
    querySqlBookSource();
  }

  // 获取本地已保存的书源
  @action
  querySqlBookSource() async {
    final box = await Objectbox.createBookSourceBox();
    final queryBuild = box.query().build();
    localBookSource = queryBuild.find();
    queryBuild.close();
  }
}
