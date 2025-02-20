// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_list_rule.dart';

class BookListRuleMapper extends ClassMapperBase<BookListRule> {
  BookListRuleMapper._();

  static BookListRuleMapper? _instance;
  static BookListRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookListRuleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BookListRule';

  static String? _$bookList(BookListRule v) => v.bookList;
  static const Field<BookListRule, String> _f$bookList =
      Field('bookList', _$bookList, opt: true);
  static String? _$name(BookListRule v) => v.name;
  static const Field<BookListRule, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$author(BookListRule v) => v.author;
  static const Field<BookListRule, String> _f$author =
      Field('author', _$author, opt: true);
  static String? _$intro(BookListRule v) => v.intro;
  static const Field<BookListRule, String> _f$intro =
      Field('intro', _$intro, opt: true);
  static String? _$kind(BookListRule v) => v.kind;
  static const Field<BookListRule, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$lastChapter(BookListRule v) => v.lastChapter;
  static const Field<BookListRule, String> _f$lastChapter =
      Field('lastChapter', _$lastChapter, opt: true);
  static String? _$updateTime(BookListRule v) => v.updateTime;
  static const Field<BookListRule, String> _f$updateTime =
      Field('updateTime', _$updateTime, opt: true);
  static String? _$bookUrl(BookListRule v) => v.bookUrl;
  static const Field<BookListRule, String> _f$bookUrl =
      Field('bookUrl', _$bookUrl, opt: true);
  static String? _$coverUrl(BookListRule v) => v.coverUrl;
  static const Field<BookListRule, String> _f$coverUrl =
      Field('coverUrl', _$coverUrl, opt: true);
  static String? _$wordCount(BookListRule v) => v.wordCount;
  static const Field<BookListRule, String> _f$wordCount =
      Field('wordCount', _$wordCount, opt: true);

  @override
  final MappableFields<BookListRule> fields = const {
    #bookList: _f$bookList,
    #name: _f$name,
    #author: _f$author,
    #intro: _f$intro,
    #kind: _f$kind,
    #lastChapter: _f$lastChapter,
    #updateTime: _f$updateTime,
    #bookUrl: _f$bookUrl,
    #coverUrl: _f$coverUrl,
    #wordCount: _f$wordCount,
  };

  static BookListRule _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('BookListRule');
  }

  @override
  final Function instantiate = _instantiate;

  static BookListRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookListRule>(map);
  }

  static BookListRule fromJson(String json) {
    return ensureInitialized().decodeJson<BookListRule>(json);
  }
}

mixin BookListRuleMappable {
  String toJson();
  Map<String, dynamic> toMap();
  BookListRuleCopyWith<BookListRule, BookListRule, BookListRule> get copyWith;
}

abstract class BookListRuleCopyWith<$R, $In extends BookListRule, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? bookList,
      String? name,
      String? author,
      String? intro,
      String? kind,
      String? lastChapter,
      String? updateTime,
      String? bookUrl,
      String? coverUrl,
      String? wordCount});
  BookListRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
