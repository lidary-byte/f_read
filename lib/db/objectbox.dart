import 'package:f_read/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
// import 'package:objectbox/objectbox.dart';
// import 'objectbox.g.dart';

class Objectbox<T> {
  late final Store _store;

  late final Box<T> _box;

  Objectbox._create(this._store) {
    _box = Box<T>(_store);
  }

  static create() async {
    final store = await openStore(
      directory: p.join(
        (await getApplicationDocumentsDirectory()).path,
        "f-read-db",
      ),
      macosApplicationGroup: 'FREAD.app',
    );
    return Objectbox._create(store);
  }
}
