import 'package:f_read/pages/book_shelf/views/book_shelf_page.dart';
import 'package:f_read/pages/home/controllers/home_controller.dart';
import 'package:f_read/pages/mine/mine_page.dart';
import 'package:f_read/widget/home_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

  final PageController _pageController = PageController(); // 用于切换页面

  // 页面列表
  final List<Widget> _pages = [
    BookShelfPage(),
    Center(child: Text('搜索', style: TextStyle(fontSize: 24))),
    Center(child: Text('消息', style: TextStyle(fontSize: 24))),
    MinePage(),
  ];

  // final HomeStore _controller = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<HomeController>(
          builder:
              (_) => Column(
                children: [
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: controller.changePage,
                      children: _pages,
                    ),
                  ),
                  HomeBottomNavigation(
                    onTap: (int index) {
                      controller.changePage(index);
                      _pageController.animateToPage(
                        index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
