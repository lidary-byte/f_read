/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:10:58
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 16:59:55
 */
import 'package:dart_mappable/dart_mappable.dart';

part 'toc_rule.mapper.dart';

@MappableClass()
class TocRule with TocRuleMappable {
  // 前置更新 JS
  final String? preUpdateJs;

  // 章节列表
  final String? chapterList;

  // 章节名称
  final String? chapterName;

  // 章节 URL
  final String? chapterUrl;

  // 格式化 JS
  final String? formatJs;

  // 是否为卷
  final String? isVolume;

  // 是否为 VIP 内容
  final String? isVip;

  // 是否付费
  final String? isPay;

  // 更新时间
  final String? updateTime;

  // 下一章节目录页 URL
  final String? nextTocUrl;

  // 构造函数
  TocRule({
    this.preUpdateJs,
    this.chapterList,
    this.chapterName,
    this.chapterUrl,
    this.formatJs,
    this.isVolume,
    this.isVip,
    this.isPay,
    this.updateTime,
    this.nextTocUrl,
  });
}
