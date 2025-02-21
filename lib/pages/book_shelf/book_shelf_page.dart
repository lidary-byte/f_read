/*
 * @Description:  书源管理
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-20 15:08:10
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 17:22:07
 */
import 'package:f_read/ext/string_ext.dart';
import 'package:f_read/pages/book_shelf/book_shelf_store.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BookShelfPage extends StatelessWidget {
  BookShelfPage({super.key});

  final TextEditingController _urlEdit = TextEditingController(
    text: 'https://bitbucket.org/xiu2/yuedu/raw/master/shuyuan',
  );

  final _bookShelfStore = BookShelfStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('书架'), actions: [Text('新建书源'), _menu()]),
      body: Observer(
        builder:
            (_) => ListView.builder(
              itemBuilder:
                  (context, index) => Row(
                    children: [
                      Text('${index + 1}.'),
                      Text(_bookShelfStore.bookSource[index].bookSourceName),
                    ],
                  ),
              itemCount: _bookShelfStore.bookSource.length,
            ),
      ),
    );
  }

  _menu() {
    return PopupMenuButton(
      itemBuilder:
          (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(child: Text('新建书源')),
            PopupMenuItem(child: Text('本地导入书源')),
            PopupMenuItem(child: Text('二维码导入书源')),
            PopupMenuItem(
              child: Text('url导入书源'),
              onTap: () {
                // showGeneralDialog(context: context, pageBuilder: (BuildContext buildContext, Anim));
                showGeneralDialog(
                  context: context,
                  pageBuilder: (
                    BuildContext buildContext,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                  ) {
                    return TDInputDialog(
                      textEditingController: _urlEdit,
                      title: 'url导入',
                      hintText: '请输入书源url地址,例: https://www.baidu.com',

                      rightBtn: TDDialogButtonOptions(
                        title: '确定',
                        fontWeight: FontWeight.w600,
                        height: 56,
                        action: () {
                          if (!_urlEdit.text.isAbsUrl()) {
                            TDToast.showFail('请输入正确的url', context: context);
                            return;
                          }
                          _bookShelfStore.parseUrl(_urlEdit.text, context);
                          context.pop();
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ],
    );
  }
}
