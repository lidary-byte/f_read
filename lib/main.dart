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
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

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
