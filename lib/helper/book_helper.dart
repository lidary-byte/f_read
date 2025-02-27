import 'dart:convert';

import 'package:f_read/constant/app_const.dart';
import 'package:f_read/entity/analyze_rule/rule_data.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/ext/string_ext.dart';
import 'package:f_read/http/dio_manager.dart';

class BookHelper {
  const BookHelper._();

  // 导入书源
  static Future<List<BookSource>>? importSource(String text) {
    var source = text.trim();
    if (source.isJsonObject()) {}

    if (source.isJsonArray()) {}

    if (source.isAbsUrl()) {
      return BookHelper._importSourceUrl(source);
    }

    if (source.isUri()) {}

    return null;
  }

  /// 从url导入书源
  static Future<List<BookSource>> _importSourceUrl(String source) async {
    String url = source;
    bool isRequestWithoutUA = url.endsWith("#requestWithoutUA");

    if (isRequestWithoutUA) {
      url = url.substring(0, url.lastIndexOf("#requestWithoutUA"));
    }

    final result = await DioManager.getInstance.get(
      url,
      header: isRequestWithoutUA ? {AppConst.uaName: 'null'} : null,
    );

    return List.from(result).map((e) {
      return BookSourceMapper.fromJson(jsonEncode(e));
    }).toList();
  }

  static searchBook(BookSource bookSource, String keyword, {int page = 0}) {
    final searchUrl = bookSource.bookSourceUrl;
    if (searchUrl.isNullOrBlank()) {
      throw Exception('搜索url为空');
    }
    final rulaData = RuleData();
    // final analyzeUrl = AnalyzeUrl(
    //       mUrl = searchUrl,
    //       key = key,
    //       page = page,
    //       baseUrl = bookSource.bookSourceUrl,
    //       headerMapF = bookSource.getHeaderMap(true),
    //       source = bookSource,
    //       ruleData = ruleData,
    //       coroutineContext = coroutineContext
    //   )
  }
}
