import 'package:f_read/main.dart';
import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                onSubmitted: (value) {
                  logger.e(value);
                },
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
