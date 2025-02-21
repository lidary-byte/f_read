import 'package:f_read/entity/book_source.dart';
import 'package:f_read/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class Objectbox {
  // static late final Store store;
  static Box<BookSource>? _bookSourceBox;

  static Future<Box<BookSource>> createBookSourceBox() async {
    if (_bookSourceBox != null) {
      return _bookSourceBox!;
    }
    final store = await openStore(
      directory: p.join(
        (await getApplicationDocumentsDirectory()).path,
        "f-read-db",
      ),
      macosApplicationGroup: 'FREAD.app',
    );
    _bookSourceBox = store.box<BookSource>();
    // return store.box<T>(); // Objectbox._create(store);
    return _bookSourceBox!;
  }
}
