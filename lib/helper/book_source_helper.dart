/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 17:35:04
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 09:43:57
 */
import 'package:f_read/constant/app_const.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/ext/string_ext.dart';
import 'package:f_read/http/dio_manager.dart';
import 'package:flutter/foundation.dart';

class BookSourceHelper {
  static void importSource(String text) {
    var source = text.trim();
    if (source.isJsonObject()) {}

    if (source.isJsonArray()) {}

    if (source.isAbsUrl()) {
      BookSourceHelper._importSourceUrl(source);
    }

    if (source.isUri()) {}
  }

  /// 从url导入书源
  static _importSourceUrl(String source) {
    String url = source;
    bool isRequestWithoutUA = url.endsWith("#requestWithoutUA");

    if (isRequestWithoutUA) {
      url = url.substring(0, url.lastIndexOf("#requestWithoutUA"));
    }

    DioManager.getInstance
        .get(url, header: isRequestWithoutUA ? {AppConst.uaName: 'null'} : null)
        .then((value) {
          final bookSource = List.from(value.data).map((e) {
            return BookSourceMapper.fromJson(e);
          });
          debugPrint('----------解析条数:' + bookSource.length.toString());
        });
  }
}
