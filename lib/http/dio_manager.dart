import 'dart:convert';
import 'dart:io';
import 'package:dio/io.dart';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioManager {
  static DioManager? _dioManager;

  static Dio? _dio;

  static DioManager get getInstance {
    if (_dioManager == null) {
      _dioManager ??= DioManager();
      _dio ??=
          Dio()
            ..interceptors.add(PrettyDioLogger())
            ..httpClientAdapter = IOHttpClientAdapter(
              createHttpClient: () {
                final client = HttpClient();
                client.findProxy = (uri) {
                  // 将请求代理至 localhost:8888。
                  // 请注意，代理会在你正在运行应用的设备上生效，而不是在宿主平台生效。
                  // return 'PROXY localhost:7890';
                  return 'DIRECT';
                };
                return client;
              },
            );
    }

    return _dioManager!;
  }

  get(String url, {Map<String, dynamic>? header}) async {
    final response = await _dio!.get(url, options: Options(headers: header));
    return jsonDecode(response.data);
  }
}
