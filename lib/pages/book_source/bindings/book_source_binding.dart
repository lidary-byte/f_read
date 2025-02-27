import 'package:f_read/pages/book_source/controllers/book_source_controller.dart';
import 'package:get/get.dart';

class BookSourceBinding extends Binding {
  @override
  List<Bind> dependencies() => [Bind.lazyPut(() => BookSourceController())];
}
