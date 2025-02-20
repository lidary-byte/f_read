// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_info_rule.dart';

class BookInfoRuleMapper extends ClassMapperBase<BookInfoRule> {
  BookInfoRuleMapper._();

  static BookInfoRuleMapper? _instance;
  static BookInfoRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookInfoRuleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BookInfoRule';

  static String? _$init(BookInfoRule v) => v.init;
  static const Field<BookInfoRule, String> _f$init =
      Field('init', _$init, opt: true);
  static String? _$name(BookInfoRule v) => v.name;
  static const Field<BookInfoRule, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$author(BookInfoRule v) => v.author;
  static const Field<BookInfoRule, String> _f$author =
      Field('author', _$author, opt: true);
  static String? _$intro(BookInfoRule v) => v.intro;
  static const Field<BookInfoRule, String> _f$intro =
      Field('intro', _$intro, opt: true);
  static String? _$kind(BookInfoRule v) => v.kind;
  static const Field<BookInfoRule, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$lastChapter(BookInfoRule v) => v.lastChapter;
  static const Field<BookInfoRule, String> _f$lastChapter =
      Field('lastChapter', _$lastChapter, opt: true);
  static String? _$updateTime(BookInfoRule v) => v.updateTime;
  static const Field<BookInfoRule, String> _f$updateTime =
      Field('updateTime', _$updateTime, opt: true);
  static String? _$coverUrl(BookInfoRule v) => v.coverUrl;
  static const Field<BookInfoRule, String> _f$coverUrl =
      Field('coverUrl', _$coverUrl, opt: true);
  static String? _$tocUrl(BookInfoRule v) => v.tocUrl;
  static const Field<BookInfoRule, String> _f$tocUrl =
      Field('tocUrl', _$tocUrl, opt: true);
  static String? _$wordCount(BookInfoRule v) => v.wordCount;
  static const Field<BookInfoRule, String> _f$wordCount =
      Field('wordCount', _$wordCount, opt: true);
  static String? _$canReName(BookInfoRule v) => v.canReName;
  static const Field<BookInfoRule, String> _f$canReName =
      Field('canReName', _$canReName, opt: true);
  static String? _$downloadUrls(BookInfoRule v) => v.downloadUrls;
  static const Field<BookInfoRule, String> _f$downloadUrls =
      Field('downloadUrls', _$downloadUrls, opt: true);

  @override
  final MappableFields<BookInfoRule> fields = const {
    #init: _f$init,
    #name: _f$name,
    #author: _f$author,
    #intro: _f$intro,
    #kind: _f$kind,
    #lastChapter: _f$lastChapter,
    #updateTime: _f$updateTime,
    #coverUrl: _f$coverUrl,
    #tocUrl: _f$tocUrl,
    #wordCount: _f$wordCount,
    #canReName: _f$canReName,
    #downloadUrls: _f$downloadUrls,
  };

  static BookInfoRule _instantiate(DecodingData data) {
    return BookInfoRule(
        init: data.dec(_f$init),
        name: data.dec(_f$name),
        author: data.dec(_f$author),
        intro: data.dec(_f$intro),
        kind: data.dec(_f$kind),
        lastChapter: data.dec(_f$lastChapter),
        updateTime: data.dec(_f$updateTime),
        coverUrl: data.dec(_f$coverUrl),
        tocUrl: data.dec(_f$tocUrl),
        wordCount: data.dec(_f$wordCount),
        canReName: data.dec(_f$canReName),
        downloadUrls: data.dec(_f$downloadUrls));
  }

  @override
  final Function instantiate = _instantiate;

  static BookInfoRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookInfoRule>(map);
  }

  static BookInfoRule fromJson(String json) {
    return ensureInitialized().decodeJson<BookInfoRule>(json);
  }
}

mixin BookInfoRuleMappable {
  String toJson() {
    return BookInfoRuleMapper.ensureInitialized()
        .encodeJson<BookInfoRule>(this as BookInfoRule);
  }

  Map<String, dynamic> toMap() {
    return BookInfoRuleMapper.ensureInitialized()
        .encodeMap<BookInfoRule>(this as BookInfoRule);
  }

  BookInfoRuleCopyWith<BookInfoRule, BookInfoRule, BookInfoRule> get copyWith =>
      _BookInfoRuleCopyWithImpl(this as BookInfoRule, $identity, $identity);
  @override
  String toString() {
    return BookInfoRuleMapper.ensureInitialized()
        .stringifyValue(this as BookInfoRule);
  }

  @override
  bool operator ==(Object other) {
    return BookInfoRuleMapper.ensureInitialized()
        .equalsValue(this as BookInfoRule, other);
  }

  @override
  int get hashCode {
    return BookInfoRuleMapper.ensureInitialized()
        .hashValue(this as BookInfoRule);
  }
}

extension BookInfoRuleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookInfoRule, $Out> {
  BookInfoRuleCopyWith<$R, BookInfoRule, $Out> get $asBookInfoRule =>
      $base.as((v, t, t2) => _BookInfoRuleCopyWithImpl(v, t, t2));
}

abstract class BookInfoRuleCopyWith<$R, $In extends BookInfoRule, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? init,
      String? name,
      String? author,
      String? intro,
      String? kind,
      String? lastChapter,
      String? updateTime,
      String? coverUrl,
      String? tocUrl,
      String? wordCount,
      String? canReName,
      String? downloadUrls});
  BookInfoRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookInfoRuleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookInfoRule, $Out>
    implements BookInfoRuleCopyWith<$R, BookInfoRule, $Out> {
  _BookInfoRuleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookInfoRule> $mapper =
      BookInfoRuleMapper.ensureInitialized();
  @override
  $R call(
          {Object? init = $none,
          Object? name = $none,
          Object? author = $none,
          Object? intro = $none,
          Object? kind = $none,
          Object? lastChapter = $none,
          Object? updateTime = $none,
          Object? coverUrl = $none,
          Object? tocUrl = $none,
          Object? wordCount = $none,
          Object? canReName = $none,
          Object? downloadUrls = $none}) =>
      $apply(FieldCopyWithData({
        if (init != $none) #init: init,
        if (name != $none) #name: name,
        if (author != $none) #author: author,
        if (intro != $none) #intro: intro,
        if (kind != $none) #kind: kind,
        if (lastChapter != $none) #lastChapter: lastChapter,
        if (updateTime != $none) #updateTime: updateTime,
        if (coverUrl != $none) #coverUrl: coverUrl,
        if (tocUrl != $none) #tocUrl: tocUrl,
        if (wordCount != $none) #wordCount: wordCount,
        if (canReName != $none) #canReName: canReName,
        if (downloadUrls != $none) #downloadUrls: downloadUrls
      }));
  @override
  BookInfoRule $make(CopyWithData data) => BookInfoRule(
      init: data.get(#init, or: $value.init),
      name: data.get(#name, or: $value.name),
      author: data.get(#author, or: $value.author),
      intro: data.get(#intro, or: $value.intro),
      kind: data.get(#kind, or: $value.kind),
      lastChapter: data.get(#lastChapter, or: $value.lastChapter),
      updateTime: data.get(#updateTime, or: $value.updateTime),
      coverUrl: data.get(#coverUrl, or: $value.coverUrl),
      tocUrl: data.get(#tocUrl, or: $value.tocUrl),
      wordCount: data.get(#wordCount, or: $value.wordCount),
      canReName: data.get(#canReName, or: $value.canReName),
      downloadUrls: data.get(#downloadUrls, or: $value.downloadUrls));

  @override
  BookInfoRuleCopyWith<$R2, BookInfoRule, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BookInfoRuleCopyWithImpl($value, $cast, t);
}
