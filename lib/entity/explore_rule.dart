/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:10:22
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 17:08:41
 */
import 'package:dart_mappable/dart_mappable.dart';
import 'package:f_read/entity/book_list_rule.dart';

part 'explore_rule.mapper.dart';

@MappableClass(discriminatorValue: 'exploreRule')
class ExploreRule extends BookListRule with ExploreRuleMappable {
  // 书单
  final String? bookList;

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

  // 书籍URL
  final String? bookUrl;

  // 封面URL
  final String? coverUrl;

  // 字数
  final String? wordCount;

  // 构造函数
  ExploreRule({
    this.bookList,
    this.name,
    this.author,
    this.intro,
    this.kind,
    this.lastChapter,
    this.updateTime,
    this.bookUrl,
    this.coverUrl,
    this.wordCount,
  });
}
