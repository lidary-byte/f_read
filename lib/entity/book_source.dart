import 'package:dart_mappable/dart_mappable.dart';
import 'package:f_read/constant/app_pattern.dart';
import 'package:f_read/ext/string_ext.dart';
import 'package:objectbox/objectbox.dart';
import 'book_info_rule.dart';
import 'content_rule.dart';
import 'explore_rule.dart';
import 'review_rule.dart';
import 'search_rule.dart';
import 'toc_rule.dart';

part 'book_source.mapper.dart';

@MappableClass()
@Entity()
class BookSource with BookSourceMappable {
  @Id()
  int id = 0;
  // 地址，包括 http/https
  // @PrimaryKey()
  @Index()
  final String bookSourceUrl;

  // 名称
  final String bookSourceName;

  // 分组
  String? bookSourceGroup;

  // 类型，0 文本，1 音频, 2 图片, 3 文件
  // @BookSourceType.Type
  final int bookSourceType;

  // 详情页url正则
  final String? bookUrlPattern;

  // 手动排序编号
  // @ColumnInfo(defaultValue: "0")
  final int customOrder;

  // 是否启用
  // @ColumnInfo(defaultValue: "1")
  bool enabled;

  // 启用发现
  // @ColumnInfo(defaultValue: "1")
  final bool enabledExplore;

  // js库
  final String? jsLib;

  // 启用okhttp CookieJar 自动保存每次请求的cookie
  // @ColumnInfo(defaultValue: "0")
  final bool? enabledCookieJar;

  // 并发率
  final String? concurrentRate;

  // 请求头
  final String? header;

  // 登录地址
  final String? loginUrl;

  // 登录UI
  final String? loginUi;

  // 登录检测js
  final String? loginCheckJs;

  // 封面解密js
  final String? coverDecodeJs;

  // 注释
  String? bookSourceComment;

  // 自定义变量说明
  final String? variableComment;

  // 最后更新时间
  final int lastUpdateTime;

  // 响应时间
  final int respondTime;

  // 智能排序的权重
  final int weight;

  // 发现url
  final String? exploreUrl;

  // 发现筛选规则
  final String? exploreScreen;

  // 发现规则
  final ExploreRule? ruleExplore;

  // 搜索url
  final String? searchUrl;

  // 搜索规则
  final SearchRule? ruleSearch;

  // 书籍信息页规则
  final BookInfoRule? ruleBookInfo;

  // 目录页规则
  final TocRule? ruleToc;

  // 正文页规则
  final ContentRule? ruleContent;

  // 段评规则
  final ReviewRule? ruleReview;

  // Constructor
  BookSource({
    required this.bookSourceUrl,
    required this.bookSourceName,
    this.bookSourceGroup,
    this.bookSourceType = 0,
    this.bookUrlPattern,
    this.customOrder = 0,
    this.enabled = true,
    this.enabledExplore = true,
    this.jsLib,
    this.enabledCookieJar = true,
    this.concurrentRate,
    this.header,
    this.loginUrl,
    this.loginUi,
    this.loginCheckJs,
    this.coverDecodeJs,
    this.bookSourceComment,
    this.variableComment,
    this.lastUpdateTime = 0,
    this.respondTime = 180000,
    this.weight = 0,
    this.exploreUrl,
    this.exploreScreen,
    this.ruleExplore,
    this.searchUrl,
    this.ruleSearch,
    this.ruleBookInfo,
    this.ruleToc,
    this.ruleContent,
    this.ruleReview,
  });

  // Add group to bookSourceGroup
  BookSource addGroup(String groups) {
    if (bookSourceGroup != null) {
      final groupSet =
          bookSourceGroup!.splitNotBlank(AppPattern.splitGroupRegex).toSet();
      groupSet.addAll(groups.splitNotBlank(AppPattern.splitGroupRegex));
      bookSourceGroup = groupSet.join(',');
    } else {
      bookSourceGroup = groups;
    }
    return this;
  }

  // Remove group from bookSourceGroup
  BookSource removeGroup(String groups) {
    if (bookSourceGroup != null) {
      final groupSet =
          bookSourceGroup!.splitNotBlank(AppPattern.splitGroupRegex).toSet();
      groupSet.removeAll(
        groups.splitNotBlank(AppPattern.splitGroupRegex).toSet(),
      );
      bookSourceGroup = groupSet.join(',');
    }
    return this;
  }

  // Check if bookSourceGroup contains a group
  bool hasGroup(String group) {
    if (bookSourceGroup != null) {
      final groupSet =
          bookSourceGroup!.splitNotBlank(AppPattern.splitGroupRegex).toSet();
      return groupSet.contains(group);
    }
    return false;
  }

  // Add error comment
  void addErrorComment(Exception e) {
    bookSourceComment = "// Error: ${e.toString()}";
  }
}
