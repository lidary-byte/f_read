import 'package:f_read/db/objectbox.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/entity/book_source_part.dart';
import 'package:f_read/ext/string_ext.dart';
import 'package:f_read/objectbox.g.dart';

class DbHelper {
  const DbHelper._();

  /// 查找数据库的书源
  static Future<List<BookSource>> queryBookSource() async {
    final box = await Objectbox.createBookSourceBox();
    return box.getAll();
  }

  /// 根据url查找数据库的书源
  static queryBookSourceWithUrl(String url) async {
    final box = await Objectbox.createBookSourceBox();
    final queryBuild = box.query(BookSource_.bookSourceUrl.equals(url)).build();
    final localBookSource = queryBuild.find();
    queryBuild.close();
    return localBookSource;
  }

  static Future<List<BookSourcePart>> queryBookSourcePart() async {
    return (await queryBookSource())
        .map(
          (e) => BookSourcePart(
            bookSourceUrl: e.bookSourceUrl,
            bookSourceName: e.bookSourceName,
            bookSourceGroup: e.bookSourceGroup,
            customOrder: e.customOrder,
            enabled: e.enabled,
            enabledExplore: e.enabledExplore,
            hasLoginUrl: !e.loginUrl.isNullOrBlank(),
            lastUpdateTime: e.lastUpdateTime,
            respondTime: e.respondTime,
            weight: e.weight,
            hasExploreUrl: !e.exploreUrl.isNullOrBlank(),
          ),
        )
        .toList();
  }
}
