import 'package:f_read/pages/book_search/bindings/book_search_binding.dart';
import 'package:f_read/pages/book_shelf/bindings/book_shelf_binding.dart';
import 'package:f_read/pages/book_shelf/views/book_shelf_page.dart';
import 'package:f_read/pages/book_source/bindings/book_source_binding.dart';
import 'package:f_read/pages/book_source/views/book_source_page.dart';
import 'package:f_read/pages/home/bindings/home_binding.dart';
import 'package:f_read/pages/home/views/home_page.dart';
import 'package:f_read/pages/book_search/views/book_search_page.dart';
import 'package:f_read/router/router_path.dart';
import 'package:get/get.dart';

final appPages = [
  GetPage(
    name: RoutePath.home,
    page: () => HomePage(),
    binding: HomeBinding(),
    // bindings: [HomeBinding()]
    // binds: [Bind.lazyPut(() => HomeController())],
  ),
  GetPage(
    transition: Transition.cupertino,
    name: RoutePath.bookShelf,
    page: () => BookShelfPage(),
    binding: BookShelfBinding(),
  ),
  GetPage(
    name: RoutePath.bookSource,
    transition: Transition.cupertino,
    page: () => BookSourcePage(),
    binding: BookSourceBinding(),
  ),
  GetPage(
    name: RoutePath.bookSearch,
    page: () => BookSearchPage(),
    transition: Transition.cupertino,
    binding: BookSearchBinding(),
  ),
];
