import 'package:f_read/pages/book_search/controllers/book_search_controller.dart';
import 'package:get/get.dart';

class BookSearchBinding extends Binding {
  @override
  List<Bind> dependencies() => [Bind.lazyPut(() => BookSearchController())];
}
