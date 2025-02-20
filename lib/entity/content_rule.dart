/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:11:09
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 17:04:25
 */
import 'package:dart_mappable/dart_mappable.dart';

part 'content_rule.mapper.dart';

// @JsonSerializable(explicitToJson: true)
@MappableClass()
class ContentRule with ContentRuleMappable {
  // 正文内容
  final String? content;

  // 标题，有些网站只能在正文中获取标题
  final String? title;

  // 下一章节内容 URL
  final String? nextContentUrl;

  // 网页 JS
  final String? webJs;

  // 来源的正则表达式
  final String? sourceRegex;

  // 替换规则
  final String? replaceRegex;

  // 图片样式，默认大小居中，FULL 最大宽度
  final String? imageStyle;

  // 图片解密 JS，解密图片的 bytes
  final String? imageDecode;

  // 购买操作 JS 或者包含 {{js}} 的 URL
  final String? payAction;

  // 构造函数
  ContentRule({
    this.content,
    this.title,
    this.nextContentUrl,
    this.webJs,
    this.sourceRegex,
    this.replaceRegex,
    this.imageStyle,
    this.imageDecode,
    this.payAction,
  });
}
