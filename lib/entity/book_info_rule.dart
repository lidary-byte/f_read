/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:10:47
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 17:02:17
 */
import 'package:dart_mappable/dart_mappable.dart';

part 'book_info_rule.mapper.dart';

@MappableClass()
class BookInfoRule with BookInfoRuleMappable {
  // 初始化字段
  final String? init;

  // 名称
  final String? name;

  // 作者
  final String? author;

  // 简介
  final String? intro;

  // 类型
  final String? kind;

  // 最新章节
  final String? lastChapter;

  // 更新时间
  final String? updateTime;

  // 封面 URL
  final String? coverUrl;

  // 目录页 URL
  final String? tocUrl;

  // 字数
  final String? wordCount;

  // 是否可以重命名
  final String? canReName;

  // 下载链接
  final String? downloadUrls;

  // 构造函数
  BookInfoRule({
    this.init,
    this.name,
    this.author,
    this.intro,
    this.kind,
    this.lastChapter,
    this.updateTime,
    this.coverUrl,
    this.tocUrl,
    this.wordCount,
    this.canReName,
    this.downloadUrls,
  });
}
