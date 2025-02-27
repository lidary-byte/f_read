import 'dart:convert';

import 'package:f_read/main.dart';
import 'package:f_read/utils/js_util.dart';

class BaseSource {
  String? concurrentRate;
  String? loginUrl;
  String? loginUi;
  String? header;
  bool? enabledCookieJar;
  String? jsLib;

  String getTag() {
    // 根据你的需求实现
    return 'tag';
  }

  String getKey() {
    // 根据你的需求实现
    return 'key';
  }

  Map<String, String> getHeaderMap({bool hasLoginHeader = false}) {
    var headers = <String, String>{};
    if (header != null) {
      // 在 Dart 中处理 header 内容，可能需要一些自定义的逻辑
      try {
        var json = header!;
        headers.addAll(Map<String, String>.from(jsonDecode(json)));
      } catch (e) {
        logger.e("执行请求头规则出错\n$e");
      }
    }
    // 添加默认的 UA 信息
    if (!headers.containsKey('User-Agent')) {
      headers['User-Agent'] = 'YourUserAgent';
    }
    if (hasLoginHeader) {
      var loginHeaderMap = getLoginHeaderMap();
      if (loginHeaderMap != null) {
        headers.addAll(loginHeaderMap);
      }
    }
    return headers;
  }

  // 获取登录头部信息
  String? getLoginHeader() {
    return CacheManager.get("loginHeader_${getKey()}");
  }

  Map<String, String>? getLoginHeaderMap() {
    var cache = getLoginHeader();
    if (cache != null) {
      try {
        return Map<String, String>.from(jsonDecode(cache));
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  // 保存登录头部信息
  void putLoginHeader(String header) {
    var headerMap = Map<String, String>.from(jsonDecode(header));
    var cookie = headerMap['Cookie'] ?? headerMap['cookie'];
    if (cookie != null) {
      CookieStore.replaceCookie(getKey(), cookie);
    }
    CacheManager.put("loginHeader_${getKey()}", header);
  }

  // 删除登录头部信息
  void removeLoginHeader() {
    CacheManager.delete("loginHeader_${getKey()}");
    CookieStore.removeCookie(getKey());
  }

  // 获取用户信息 (AES解密)
  String? getLoginInfo() {
    try {
      var key = utf8.encode('your_android_id'); // 使用适当的密钥
      var cache = CacheManager.get("userInfo_${getKey()}");
      if (cache == null) return null;
      return AES.decrypt(cache, key);
    } catch (e) {
      logger.e("获取登录信息出错: $e");
      return null;
    }
  }

  // 保存用户信息
  bool putLoginInfo(String info) {
    try {
      var key = utf8.encode('your_android_id'); // 使用适当的密钥
      var encryptedInfo = AES.encrypt(info, key);
      CacheManager.put("userInfo_${getKey()}", encryptedInfo);
      return true;
    } catch (e) {
      logger.e("保存登录信息出错: $e");
      return false;
    }
  }

  void removeLoginInfo() {
    CacheManager.delete("userInfo_${getKey()}");
  }

  // 设置自定义变量
  void setVariable(String? variable) {
    if (variable != null) {
      CacheManager.put("sourceVariable_${getKey()}", variable);
    } else {
      CacheManager.delete("sourceVariable_${getKey()}");
    }
  }

  // 获取自定义变量
  String getVariable() {
    return CacheManager.get("sourceVariable_${getKey()}") ?? '';
  }

  // 保存数据
  String put(String key, String value) {
    CacheManager.put("v_${getKey()}_$key", value);
    return value;
  }

  // 获取保存的数据
  String get(String key) {
    return CacheManager.get("v_${getKey()}_$key") ?? '';
  }

  // 执行JS
  Future<dynamic> evalJS(String jsStr) async {
    return JsUtil.evaluate(jsStr);
  }
}
