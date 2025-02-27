import 'package:f_read/pages/book_shelf/controllers/book_shelf_controller.dart';
import 'package:get/get.dart';

class BookShelfBinding extends Binding {
  @override
  List<Bind> dependencies() => [Bind.lazyPut(() => BookShelfController())];
}
