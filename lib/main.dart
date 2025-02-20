/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 15:24:29
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 15:27:29
 */
import 'package:f_read/constant/app_const.dart';
import 'package:f_read/router/router_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: kDebugMode,
    );
  }
}
