import 'package:f_read/constant/app_const.dart';
import 'package:f_read/router/router_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

final logger = Logger(level: kDebugMode ? Level.all : Level.off);

void main() {
  SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // 状态栏背景色
    statusBarBrightness: Brightness.light, // 状态栏主题
    statusBarIconBrightness: Brightness.dark, // 状态栏图标主题
    systemNavigationBarColor: Colors.transparent, // 导航栏背景色
    systemNavigationBarDividerColor: Colors.transparent, //导航栏线条色
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      title: AppConst.appTag,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        colorScheme: ColorScheme.light(
          primary: TDThemeData.defaultData().brandNormalColor,
        ),
        extensions: [
          TDThemeData.defaultData(),
          WoltModalSheetThemeData(
            // modalBarrierColor: TDThemeData.defaultData().brandColor1,
            // surfaceTintColor:
            //     Colors.white, //TDThemeData.defaultData().brandColor2,
            backgroundColor: TDTheme.of(context).whiteColor1,
          ),
        ],
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
