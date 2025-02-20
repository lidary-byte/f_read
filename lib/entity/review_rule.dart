/*
 * @Description: 
 * @Author: lidary-byte lidaryl@163.com
 * @Date: 2025-02-19 16:11:18
 * @LastEditors: lidary-byte lidaryl@163.com
 * @LastEditTime: 2025-02-19 17:05:17
 */
import 'package:dart_mappable/dart_mappable.dart';
part 'review_rule.mapper.dart';

@MappableClass()
class ReviewRule with ReviewRuleMappable {
  // 段评 URL
  final String? reviewUrl;

  // 段评发布者头像
  final String? avatarRule;

  // 段评内容
  final String? contentRule;

  // 段评发布时间
  final String? postTimeRule;

  // 获取段评回复 URL
  final String? reviewQuoteUrl;

  // 点赞 URL
  final String? voteUpUrl;

  // 点踩 URL
  final String? voteDownUrl;

  // 发送回复 URL
  final String? postReviewUrl;

  // 发送回复段评 URL
  final String? postQuoteUrl;

  // 删除段评 URL
  final String? deleteUrl;

  // 构造函数
  ReviewRule({
    this.reviewUrl,
    this.avatarRule,
    this.contentRule,
    this.postTimeRule,
    this.reviewQuoteUrl,
    this.voteUpUrl,
    this.voteDownUrl,
    this.postReviewUrl,
    this.postQuoteUrl,
    this.deleteUrl,
  });
}
