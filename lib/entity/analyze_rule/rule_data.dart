import 'dart:convert';

import 'package:f_read/entity/analyze_rule/rule_data_interface.dart';
import 'package:f_read/ext/string_ext.dart';

class RuleData extends RuleDataInterface {
  @override
  String? getBigVariable(String key) {
    return null;
  }

  @override
  void putBigVariable(String key, String? value) {
    if (value.isNullOrBlank()) {
      variableMap.remove(key);
    } else {
      variableMap[key] = value!;
    }
  }

  @override
  String? getVariable(String key) {
    if (variableMap.isEmpty) {
      return null;
    }
    return jsonEncode(variableMap);
  }
}
