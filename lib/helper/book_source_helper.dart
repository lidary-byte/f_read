/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 17:35:04
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 17:01:49
 */
import 'dart:convert';

import 'package:f_read/constant/app_const.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/ext/string_ext.dart';
import 'package:f_read/http/dio_manager.dart';

class BookSourceHelper {
  const BookSourceHelper._();

  static Future<List<BookSource>>? importSource(String text) {
    var source = text.trim();
    if (source.isJsonObject()) {}

    if (source.isJsonArray()) {}

    if (source.isAbsUrl()) {
      return BookSourceHelper._importSourceUrl(source);
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
}
