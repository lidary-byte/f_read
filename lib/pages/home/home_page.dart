import 'package:f_read/pages/book_shelf/book_shelf_page.dart';
import 'package:f_read/pages/home/home_store.dart';
import 'package:f_read/pages/mine/mine_page.dart';
import 'package:f_read/widget/home_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final PageController _pageController = PageController(); // 用于切换页面

  // 页面列表
  final List<Widget> _pages = [
    BookShelfPage(),
    Center(child: Text('搜索', style: TextStyle(fontSize: 24))),
    Center(child: Text('消息', style: TextStyle(fontSize: 24))),
    MinePage(),
  ];
  final HomeStore _controller = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: HomeBottomNavigation(
      //   onTap: (int index) {
      //     _controller.changePage(index);
      //     _pageController.animateToPage(
      //       index,
      //       duration: Duration(milliseconds: 300),
      //       curve: Curves.ease,
      //     );
      //   },
      // ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: _controller.changePage,
              children: _pages,
            ),
          ),
          HomeBottomNavigation(
            onTap: (int index) {
              _controller.changePage(index);
              _pageController.animateToPage(
                index,
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
          ),
        ],
      ),
    );
  }
}
