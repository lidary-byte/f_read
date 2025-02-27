import 'package:f_read/main.dart';
import 'package:f_read/pages/book_search/controllers/book_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class BookSearchPage extends GetView<BookSearchController> {
  const BookSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TDNavBar(
              titleMargin: 0,
              titleWidget: TDSearchBar(
                needCancel: true,
                autoHeight: true,
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                placeHolder: '书籍搜索',
                mediumStyle: true,
                style: TDSearchStyle.round,
                onSubmitted: controller.search,
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return TDCell(
                    title: '书名',
                    description: '作者',
                    onClick: (_) {
                      logger.e('点击了');
                    },
                  );
                },
                itemCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
