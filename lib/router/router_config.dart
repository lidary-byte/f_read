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
