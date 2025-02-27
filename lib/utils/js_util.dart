import 'package:flutter_js/flutter_js.dart';

class JsUtil {
  JsUtil._();
  static final _jsRuntime = getJavascriptRuntime(
    forceJavascriptCoreOnAndroid: true,
  );

  // 执行js代码
  static evaluate(String jsCode) {
    return _jsRuntime.evaluate(jsCode);
  }
}
