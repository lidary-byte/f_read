abstract class RuleDataInterface {
  // 使用 Map 来存储变量
  Map<String, String> variableMap = {};

  // 更新变量
  bool putVariable(String key, String? value) {
    bool keyExist = variableMap.containsKey(key);

    if (value == null) {
      variableMap.remove(key);
      putBigVariable(key, null);
      return keyExist;
    } else if (value.length < 10000) {
      putBigVariable(key, null);
      variableMap[key] = value;
      return true;
    } else {
      variableMap.remove(key);
      putBigVariable(key, value);
      return keyExist;
    }
  }

  // 处理大变量（大于10000字符的情况）
  void putBigVariable(String key, String? value);

  // 获取变量
  String? getVariable(String key) {
    return variableMap[key] ?? getBigVariable(key) ?? '';
  }

  // 获取大变量
  String? getBigVariable(String key);
}
