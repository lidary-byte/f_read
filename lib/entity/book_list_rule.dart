/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:16:09
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 17:13:00
 */

import 'package:dart_mappable/dart_mappable.dart';

part 'book_list_rule.mapper.dart';

@MappableClass(discriminatorKey: 'bookListRuleType')
abstract class BookListRule with BookListRuleMappable {
  // 书籍列表
  String? bookList;

  // 书籍名称
  String? name;

  // 书籍作者
  String? author;

  // 书籍简介
  String? intro;

  // 书籍类别
  String? kind;

  // 最后一章节
  String? lastChapter;

  // 更新时间
  String? updateTime;

  // 书籍 URL
  String? bookUrl;

  // 封面 URL
  String? coverUrl;

  // 字数
  String? wordCount;

  // 构造函数
  BookListRule({
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
