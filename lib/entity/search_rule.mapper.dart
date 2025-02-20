// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'search_rule.dart';

class SearchRuleMapper extends SubClassMapperBase<SearchRule> {
  SearchRuleMapper._();

  static SearchRuleMapper? _instance;
  static SearchRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SearchRuleMapper._());
      BookListRuleMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'SearchRule';

  static String? _$checkKeyWord(SearchRule v) => v.checkKeyWord;
  static const Field<SearchRule, String> _f$checkKeyWord =
      Field('checkKeyWord', _$checkKeyWord, opt: true);
  static String? _$bookList(SearchRule v) => v.bookList;
  static const Field<SearchRule, String> _f$bookList =
      Field('bookList', _$bookList, opt: true);
  static String? _$name(SearchRule v) => v.name;
  static const Field<SearchRule, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$author(SearchRule v) => v.author;
  static const Field<SearchRule, String> _f$author =
      Field('author', _$author, opt: true);
  static String? _$intro(SearchRule v) => v.intro;
  static const Field<SearchRule, String> _f$intro =
      Field('intro', _$intro, opt: true);
  static String? _$kind(SearchRule v) => v.kind;
  static const Field<SearchRule, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$lastChapter(SearchRule v) => v.lastChapter;
  static const Field<SearchRule, String> _f$lastChapter =
      Field('lastChapter', _$lastChapter, opt: true);
  static String? _$updateTime(SearchRule v) => v.updateTime;
  static const Field<SearchRule, String> _f$updateTime =
      Field('updateTime', _$updateTime, opt: true);
  static String? _$bookUrl(SearchRule v) => v.bookUrl;
  static const Field<SearchRule, String> _f$bookUrl =
      Field('bookUrl', _$bookUrl, opt: true);
  static String? _$coverUrl(SearchRule v) => v.coverUrl;
  static const Field<SearchRule, String> _f$coverUrl =
      Field('coverUrl', _$coverUrl, opt: true);
  static String? _$wordCount(SearchRule v) => v.wordCount;
  static const Field<SearchRule, String> _f$wordCount =
      Field('wordCount', _$wordCount, opt: true);

  @override
  final MappableFields<SearchRule> fields = const {
    #checkKeyWord: _f$checkKeyWord,
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
  final dynamic discriminatorValue = 'searchRule';
  @override
  late final ClassMapperBase superMapper =
      BookListRuleMapper.ensureInitialized();

  static SearchRule _instantiate(DecodingData data) {
    return SearchRule(
        checkKeyWord: data.dec(_f$checkKeyWord),
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

  static SearchRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SearchRule>(map);
  }

  static SearchRule fromJson(String json) {
    return ensureInitialized().decodeJson<SearchRule>(json);
  }
}

mixin SearchRuleMappable {
  String toJson() {
    return SearchRuleMapper.ensureInitialized()
        .encodeJson<SearchRule>(this as SearchRule);
  }

  Map<String, dynamic> toMap() {
    return SearchRuleMapper.ensureInitialized()
        .encodeMap<SearchRule>(this as SearchRule);
  }

  SearchRuleCopyWith<SearchRule, SearchRule, SearchRule> get copyWith =>
      _SearchRuleCopyWithImpl(this as SearchRule, $identity, $identity);
  @override
  String toString() {
    return SearchRuleMapper.ensureInitialized()
        .stringifyValue(this as SearchRule);
  }

  @override
  bool operator ==(Object other) {
    return SearchRuleMapper.ensureInitialized()
        .equalsValue(this as SearchRule, other);
  }

  @override
  int get hashCode {
    return SearchRuleMapper.ensureInitialized().hashValue(this as SearchRule);
  }
}

extension SearchRuleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SearchRule, $Out> {
  SearchRuleCopyWith<$R, SearchRule, $Out> get $asSearchRule =>
      $base.as((v, t, t2) => _SearchRuleCopyWithImpl(v, t, t2));
}

abstract class SearchRuleCopyWith<$R, $In extends SearchRule, $Out>
    implements BookListRuleCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? checkKeyWord,
      String? bookList,
      String? name,
      String? author,
      String? intro,
      String? kind,
      String? lastChapter,
      String? updateTime,
      String? bookUrl,
      String? coverUrl,
      String? wordCount});
  SearchRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SearchRuleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SearchRule, $Out>
    implements SearchRuleCopyWith<$R, SearchRule, $Out> {
  _SearchRuleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SearchRule> $mapper =
      SearchRuleMapper.ensureInitialized();
  @override
  $R call(
          {Object? checkKeyWord = $none,
          Object? bookList = $none,
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
        if (checkKeyWord != $none) #checkKeyWord: checkKeyWord,
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
  SearchRule $make(CopyWithData data) => SearchRule(
      checkKeyWord: data.get(#checkKeyWord, or: $value.checkKeyWord),
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
  SearchRuleCopyWith<$R2, SearchRule, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SearchRuleCopyWithImpl($value, $cast, t);
}
