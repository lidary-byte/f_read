// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'explore_rule.dart';

class ExploreRuleMapper extends SubClassMapperBase<ExploreRule> {
  ExploreRuleMapper._();

  static ExploreRuleMapper? _instance;
  static ExploreRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ExploreRuleMapper._());
      BookListRuleMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ExploreRule';

  static String? _$bookList(ExploreRule v) => v.bookList;
  static const Field<ExploreRule, String> _f$bookList =
      Field('bookList', _$bookList, opt: true);
  static String? _$name(ExploreRule v) => v.name;
  static const Field<ExploreRule, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$author(ExploreRule v) => v.author;
  static const Field<ExploreRule, String> _f$author =
      Field('author', _$author, opt: true);
  static String? _$intro(ExploreRule v) => v.intro;
  static const Field<ExploreRule, String> _f$intro =
      Field('intro', _$intro, opt: true);
  static String? _$kind(ExploreRule v) => v.kind;
  static const Field<ExploreRule, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$lastChapter(ExploreRule v) => v.lastChapter;
  static const Field<ExploreRule, String> _f$lastChapter =
      Field('lastChapter', _$lastChapter, opt: true);
  static String? _$updateTime(ExploreRule v) => v.updateTime;
  static const Field<ExploreRule, String> _f$updateTime =
      Field('updateTime', _$updateTime, opt: true);
  static String? _$bookUrl(ExploreRule v) => v.bookUrl;
  static const Field<ExploreRule, String> _f$bookUrl =
      Field('bookUrl', _$bookUrl, opt: true);
  static String? _$coverUrl(ExploreRule v) => v.coverUrl;
  static const Field<ExploreRule, String> _f$coverUrl =
      Field('coverUrl', _$coverUrl, opt: true);
  static String? _$wordCount(ExploreRule v) => v.wordCount;
  static const Field<ExploreRule, String> _f$wordCount =
      Field('wordCount', _$wordCount, opt: true);

  @override
  final MappableFields<ExploreRule> fields = const {
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

  @override
  final String discriminatorKey = 'bookListRuleType';
  @override
  final dynamic discriminatorValue = 'exploreRule';
  @override
  late final ClassMapperBase superMapper =
      BookListRuleMapper.ensureInitialized();

  static ExploreRule _instantiate(DecodingData data) {
    return ExploreRule(
        bookList: data.dec(_f$bookList),
        name: data.dec(_f$name),
        author: data.dec(_f$author),
        intro: data.dec(_f$intro),
        kind: data.dec(_f$kind),
        lastChapter: data.dec(_f$lastChapter),
        updateTime: data.dec(_f$updateTime),
        bookUrl: data.dec(_f$bookUrl),
        coverUrl: data.dec(_f$coverUrl),
        wordCount: data.dec(_f$wordCount));
  }

  @override
  final Function instantiate = _instantiate;

  static ExploreRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ExploreRule>(map);
  }

  static ExploreRule fromJson(String json) {
    return ensureInitialized().decodeJson<ExploreRule>(json);
  }
}

mixin ExploreRuleMappable {
  String toJson() {
    return ExploreRuleMapper.ensureInitialized()
        .encodeJson<ExploreRule>(this as ExploreRule);
  }

  Map<String, dynamic> toMap() {
    return ExploreRuleMapper.ensureInitialized()
        .encodeMap<ExploreRule>(this as ExploreRule);
  }

  ExploreRuleCopyWith<ExploreRule, ExploreRule, ExploreRule> get copyWith =>
      _ExploreRuleCopyWithImpl(this as ExploreRule, $identity, $identity);
  @override
  String toString() {
    return ExploreRuleMapper.ensureInitialized()
        .stringifyValue(this as ExploreRule);
  }

  @override
  bool operator ==(Object other) {
    return ExploreRuleMapper.ensureInitialized()
        .equalsValue(this as ExploreRule, other);
  }

  @override
  int get hashCode {
    return ExploreRuleMapper.ensureInitialized().hashValue(this as ExploreRule);
  }
}

extension ExploreRuleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ExploreRule, $Out> {
  ExploreRuleCopyWith<$R, ExploreRule, $Out> get $asExploreRule =>
      $base.as((v, t, t2) => _ExploreRuleCopyWithImpl(v, t, t2));
}

abstract class ExploreRuleCopyWith<$R, $In extends ExploreRule, $Out>
    implements BookListRuleCopyWith<$R, $In, $Out> {
  @override
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
  ExploreRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ExploreRuleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ExploreRule, $Out>
    implements ExploreRuleCopyWith<$R, ExploreRule, $Out> {
  _ExploreRuleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ExploreRule> $mapper =
      ExploreRuleMapper.ensureInitialized();
  @override
  $R call(
          {Object? bookList = $none,
          Object? name = $none,
          Object? author = $none,
          Object? intro = $none,
          Object? kind = $none,
          Object? lastChapter = $none,
          Object? updateTime = $none,
          Object? bookUrl = $none,
          Object? coverUrl = $none,
          Object? wordCount = $none}) =>
      $apply(FieldCopyWithData({
        if (bookList != $none) #bookList: bookList,
        if (name != $none) #name: name,
        if (author != $none) #author: author,
        if (intro != $none) #intro: intro,
        if (kind != $none) #kind: kind,
        if (lastChapter != $none) #lastChapter: lastChapter,
        if (updateTime != $none) #updateTime: updateTime,
        if (bookUrl != $none) #bookUrl: bookUrl,
        if (coverUrl != $none) #coverUrl: coverUrl,
        if (wordCount != $none) #wordCount: wordCount
      }));
  @override
  ExploreRule $make(CopyWithData data) => ExploreRule(
      bookList: data.get(#bookList, or: $value.bookList),
      name: data.get(#name, or: $value.name),
      author: data.get(#author, or: $value.author),
      intro: data.get(#intro, or: $value.intro),
      kind: data.get(#kind, or: $value.kind),
      lastChapter: data.get(#lastChapter, or: $value.lastChapter),
      updateTime: data.get(#updateTime, or: $value.updateTime),
      bookUrl: data.get(#bookUrl, or: $value.bookUrl),
      coverUrl: data.get(#coverUrl, or: $value.coverUrl),
      wordCount: data.get(#wordCount, or: $value.wordCount));

  @override
  ExploreRuleCopyWith<$R2, ExploreRule, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ExploreRuleCopyWithImpl($value, $cast, t);
}
