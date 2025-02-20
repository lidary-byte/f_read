/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-20 14:42:21
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-20 17:16:00
 */
import 'package:f_read/router/router_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

class MinePage extends StatefulWidget {
  const MinePage({super.key});

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      children: [
        Divider(height: 16, color: Colors.transparent),
        TDCellGroup(
          theme: TDCellGroupTheme.cardTheme,
          // style: TDCellStyle.cellStyle(context),
          cells: [
            TDCell(
              arrow: true,
              title: '书源管理',
              description: '新建、导入、编辑或管理书源',
              leftIcon: TDIcons.book,
              onClick: (_) {
                context.push(RoutePath.bookShelf);
              },
            ),
            TDCell(arrow: true, title: 'TXT目录规则', description: '配置TXT目录规则'),
            TDCell(arrow: true, title: '替换净化', description: '配置替换净化规则'),
            TDCell(
              arrow: true,
              title: '书源管理',
              description: '新建、导入、编辑或管理书源',
              leftIcon: TDIcons.book,
            ),
            TDCell(arrow: true, title: 'TXT目录规则', description: '配置TXT目录规则'),
            TDCell(arrow: true, title: '替换净化', description: '配置替换净化规则'),
            TDCell(
              arrow: true,
              title: '书源管理',
              description: '新建、导入、编辑或管理书源',
              leftIcon: TDIcons.book,
            ),
            TDCell(arrow: true, title: 'TXT目录规则', description: '配置TXT目录规则'),
            TDCell(arrow: true, title: '替换净化', description: '配置替换净化规则'),
            TDCell(
              arrow: true,
              title: '书源管理',
              description: '新建、导入、编辑或管理书源',
              leftIcon: TDIcons.book,
            ),
            TDCell(arrow: true, title: 'TXT目录规则', description: '配置TXT目录规则'),
            TDCell(arrow: true, title: '替换净化', description: '配置替换净化规则'),
            TDCell(
              arrow: true,
              title: '书源管理',
              description: '新建、导入、编辑或管理书源',
              leftIcon: TDIcons.book,
            ),
            TDCell(arrow: true, title: 'TXT目录规则', description: '配置TXT目录规则'),
            TDCell(arrow: true, title: '替换净化', description: '配置替换净化规则'),
          ],
        ),
        Divider(height: 16, color: Colors.transparent),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
