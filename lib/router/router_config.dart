/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-20 15:18:06
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 15:26:17
 */
import 'package:f_read/pages/book_shelf/book_shelf_page.dart';
import 'package:f_read/pages/home/home_page.dart';
import 'package:f_read/router/router_path.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  routes: [
    GoRoute(path: RoutePath.home, builder: (context, state) => HomePage()),
    GoRoute(
      path: RoutePath.bookShelf,
      builder: (context, state) => BookShelfPage(),
    ),
  ],
);
