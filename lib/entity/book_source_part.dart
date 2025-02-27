import 'package:dart_mappable/dart_mappable.dart';
import 'package:f_read/entity/book_source.dart';
import 'package:f_read/helper/db_helper.dart';

part 'book_source_part.mapper.dart';

@MappableClass()
class BookSourcePart with BookSourcePartMappable {
  // 地址，包括 http/https
  final String bookSourceUrl;
  // 名称
  final String? bookSourceName;
  // 分组
  String? bookSourceGroup;
  // 手动排序编号
  final int? customOrder;
  // 是否启用
  final bool? enabled;
  // 启用发现
  final bool? enabledExplore;
  // 是否有登录地址
  final bool? hasLoginUrl;
  // 最后更新时间，用于排序
  final int? lastUpdateTime;
  // 响应时间，用于排序
  final int? respondTime;
  // 智能排序的权重
  final int? weight;
  // 是否有发现url
  final bool? hasExploreUrl;

  BookSourcePart({
    this.bookSourceUrl = '',
    this.bookSourceName = '',
    this.bookSourceGroup,
    this.customOrder = 0,
    this.enabled = true,
    this.enabledExplore = true,
    this.hasLoginUrl = false,
    this.lastUpdateTime = 0,
    this.respondTime = 180000,
    this.weight = 0,
    this.hasExploreUrl = false,
  });

  @override
  bool operator ==(Object other) {
    return other is BookSourcePart && other.bookSourceUrl == bookSourceUrl;
  }

  @override
  int get hashCode => bookSourceUrl.hashCode;

  // 获取展示名称
  String getDisPlayNameGroup() {
    return (bookSourceGroup?.isEmpty ?? true
            ? bookSourceName
            : '$bookSourceName ($bookSourceGroup)') ??
        '';
  }

  Future<BookSource> getBookSource() async {
    return DbHelper.queryBookSourceWithUrl(bookSourceUrl); // 返回 null 或数据库查找逻辑
  }

  // 添加分组
  void addGroup(String groups) {
    if (bookSourceGroup != null && bookSourceGroup!.isNotEmpty) {
      final groupSet = Set<String>.from(bookSourceGroup!.split(','));
      groupSet.addAll(groups.split(','));
      bookSourceGroup = groupSet.join(',');
    } else {
      bookSourceGroup = groups;
    }
  }

  // 移除分组
  void removeGroup(String groups) {
    if (bookSourceGroup != null && bookSourceGroup!.isNotEmpty) {
      final groupSet = Set<String>.from(bookSourceGroup!.split(','));
      groupSet.removeAll(groups.split(','));
      bookSourceGroup = groupSet.isEmpty ? null : groupSet.join(',');
    }
  }
}

// extension BookSourceListExtension on List<BookSourcePart> {
//   // 将 BookSourcePart 转换为 BookSource 列表
//   List<BookSource> toBookSource() async {
//     // return this.map(
//     //   (bookSourcePart) => bookSourcePart.getBookSource(),
//     // ).toList();
//     map((e) async => await e.getBookSource()).toList();
//     final a = map((e) => e.getBookSource()).toList();
//     return map((e) async => await e.getBookSource()).toList();
//   }
// }
