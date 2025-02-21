import 'package:f_read/ext/string_ext.dart';
import 'package:f_read/pages/book_source/book_source_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../book_source/ui/item_book_source.dart';

class BookSourcePage extends StatelessWidget {
  BookSourcePage({super.key});

  final TextEditingController _urlEdit = TextEditingController();

  final _bookSourceStore = BookSourceStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TDNavBar(
        title: '书源',
        titleFontWeight: FontWeight.w600,
        rightBarItems: [
          TDNavBarItem(
            icon: TDIcons.add,
            action: () {
              WoltModalSheet.show(
                context: context,
                modalTypeBuilder: (_) => WoltBottomSheetType(),

                pageListBuilder:
                    (context) => [
                      WoltModalSheetPage(
                        navBarHeight: 20,
                        child: _bottomSheetMenu(context),
                      ),
                      WoltModalSheetPage(
                        leadingNavBarWidget: IconButton(
                          onPressed: () {
                            WoltModalSheet.of(context).showPrevious();
                          },
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          icon: Icon(TDIcons.chevron_left),
                        ),

                        trailingNavBarWidget: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: InkResponse(
                            child: Text('解析'),
                            onTap: () async {
                              if (!_urlEdit.text.isAbsUrl()) {
                                TDToast.showFail('请输入正确的url', context: context);
                                return;
                              }
                              // Navigator.pop(context);
                              TDToast.showLoading(context: context);
                              try {
                                await _bookSourceStore.parseUrl(
                                  _urlEdit.text,
                                  context,
                                );
                                if (!context.mounted) {
                                  return;
                                }
                                Future.delayed(Duration(milliseconds: 300), () {
                                  if (!context.mounted) {
                                    return;
                                  }
                                  WoltModalSheet.of(context).showNext();
                                });
                              } catch (e) {
                                TDToast.showFail('加载失败', context: context);
                              } finally {
                                TDToast.dismissLoading();
                              }
                            },
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: TDInput(
                            hintText: '请输入书源url地址,例: https://www.xxx.com.json',
                            controller: _urlEdit,
                          ),
                        ),
                      ),
                      SliverWoltModalSheetPage(
                        leadingNavBarWidget: IconButton(
                          onPressed: () {
                            WoltModalSheet.of(context).showPrevious();
                          },
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          icon: Icon(TDIcons.chevron_left),
                        ),
                        trailingNavBarWidget: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: InkResponse(
                            child: Text('导入'),
                            onTap: () async {
                              _bookSourceStore.insertBookSouce();
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        mainContentSliversBuilder:
                            (context) => [
                              SliverList.builder(
                                itemCount: _bookSourceStore.bookSource.length,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        ItemBookSource(
                                          bookSource:
                                              _bookSourceStore
                                                  .bookSource[index],
                                          index: index,
                                        ),
                              ),
                              // Other sliver widgets...
                            ],
                        // Additional page elements like pageTitle, topBarTitle, etc.
                      ),
                    ],
              );
            },
          ),
        ],
      ),
      body: Observer(
        builder:
            (_) => ListView.builder(
              itemBuilder:
                  (context, index) => ItemBookSource(
                    bookSource: _bookSourceStore.localBookSource[index],
                    index: index,
                  ),
              itemCount: _bookSourceStore.localBookSource.length,
            ),
      ),
    );
  }

  _bottomSheetMenu(BuildContext context) {
    return Column(
      children: [
        TDCell(title: '新建书源'),
        TDCell(title: '本地导入书源'),
        TDCell(title: '二维码导入书源'),
        TDCell(
          title: 'url导入书源',
          onClick: (_) {
            WoltModalSheet.of(context).showNext();
          },
        ),
      ],
    );
  }
}
