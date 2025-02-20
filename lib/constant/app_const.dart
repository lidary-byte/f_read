// import 'dart:convert';
import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppConst {
  static const String appTag = "FRead";

  static const String channelIdDownload = "channel_download";
  static const String channelIdReadAloud = "channel_read_aloud";
  static const String channelIdWeb = "channel_web";

  static const String uaName = "User-Agent";

  static const int maxThread = 9;

  static const int defaultWebdavId = -1;

  static const String officialSignature =
      "8DACBF25EC667C9B1374DB1450C1A866C2AAA1173016E80BF6AD2F06FABDDC08";
  static const String betaSignature =
      "93A28468B0F69E8D14C8A99AB45841CEF902BBBA3761BBFEE02E67CBA801563E";

  // static final timeFormat = DateFormat("HH:mm");

  // static final dateFormat = DateFormat("yyyy/MM/dd HH:mm");

  // static final fileNameFormat = DateFormat("yy-MM-dd-HH-mm-ss");

  static const String imagePathKey = "imagePath";

  static const List<String> menuViewNames = [
    "com.android.internal.view.menu.ListMenuItemView",
    "androidx.appcompat.view.menu.ListMenuItemView",
  ];

  static double get sysElevation {
    return 4.0; // Elevation value, can be customized based on the design
  }

  static Future<String> get androidId async {
    const platform = MethodChannel('com.legado.app/channel');
    final String androidId = await platform.invokeMethod('getAndroidId');
    return androidId;
  }

  static Future<AppInfo> get appInfo async {
    final appInfo = AppInfo();
    const platform = MethodChannel('com.legado.app/channel');

    try {
      final versionInfo = await platform.invokeMethod('getAppInfo');
      appInfo.versionName = versionInfo['versionName'];
      appInfo.versionCode = versionInfo['versionCode'];
      appInfo.appVariant = versionInfo['appVariant'];

      return appInfo;
    } catch (e) {
      return appInfo;
    }
  }

  static Future<String> get sha256Signature async {
    const platform = MethodChannel('com.legado.app/channel');
    final String signature = await platform.invokeMethod('getSha256Signature');
    return signature.toUpperCase();
  }

  static Future<bool> get isOfficial async {
    final sha256 = await sha256Signature;
    return sha256 == officialSignature;
  }

  static Future<bool> get isBeta async {
    final sha256 = await sha256Signature;
    return sha256 == betaSignature;
  }

  static List<String> charsets = [
    "UTF-8",
    "GB2312",
    "GB18030",
    "GBK",
    "Unicode",
    "UTF-16",
    "UTF-16LE",
    "ASCII",
  ];

  static const String authority = "com.legado.app.fileProvider";
}

class AppInfo {
  int versionCode;
  String versionName;
  String appVariant;

  AppInfo({
    this.versionCode = 0,
    this.versionName = "",
    this.appVariant = "UNKNOWN",
  });
}
