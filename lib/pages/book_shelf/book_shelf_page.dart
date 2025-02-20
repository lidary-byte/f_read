/*
 * @Description:  书源管理
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-20 15:08:10
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 15:42:01
 */
import 'package:flutter/material.dart';

class BookShelfPage extends StatelessWidget {
  const BookShelfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('书架'), actions: [Text('新建书源'), _menu()]),
      body: Center(child: Text('书架')),
    );
  }

  _menu() {
    return PopupMenuButton(
      itemBuilder:
          (BuildContext context) => <PopupMenuEntry>[
            PopupMenuItem(child: Text('新建书源')),
            PopupMenuItem(child: Text('本地导入书源')),
            PopupMenuItem(child: Text('二维码导入书源'), onTap: () {}),
            PopupMenuItem(child: Text('url导入书源')),
          ],
    );
  }
}
