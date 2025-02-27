import 'package:f_read/router/router_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

/// 书架
class BookShelfPage extends GetView<BookShelfPage> {
  const BookShelfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TDNavBar(
        useDefaultBack: false,
        title: '书架',
        rightBarItems: [
          TDNavBarItem(
            icon: Icons.search,
            action: () {
              Get.toNamed(RoutePath.bookSearch);
              // context.push(RoutePath.search);
            },
          ),
        ],
      ),
    );
  }
}
