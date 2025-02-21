// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_source.dart';

class BookSourceMapper extends ClassMapperBase<BookSource> {
  BookSourceMapper._();

  static BookSourceMapper? _instance;
  static BookSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookSourceMapper._());
      ExploreRuleMapper.ensureInitialized();
      SearchRuleMapper.ensureInitialized();
      BookInfoRuleMapper.ensureInitialized();
      TocRuleMapper.ensureInitialized();
      ContentRuleMapper.ensureInitialized();
      ReviewRuleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BookSource';

  static String _$bookSourceUrl(BookSource v) => v.bookSourceUrl;
  static const Field<BookSource, String> _f$bookSourceUrl =
      Field('bookSourceUrl', _$bookSourceUrl);
  static String _$bookSourceName(BookSource v) => v.bookSourceName;
  static const Field<BookSource, String> _f$bookSourceName =
      Field('bookSourceName', _$bookSourceName);
  static String? _$bookSourceGroup(BookSource v) => v.bookSourceGroup;
  static const Field<BookSource, String> _f$bookSourceGroup =
      Field('bookSourceGroup', _$bookSourceGroup, opt: true);
  static int _$bookSourceType(BookSource v) => v.bookSourceType;
  static const Field<BookSource, int> _f$bookSourceType =
      Field('bookSourceType', _$bookSourceType, opt: true, def: 0);
  static String? _$bookUrlPattern(BookSource v) => v.bookUrlPattern;
  static const Field<BookSource, String> _f$bookUrlPattern =
      Field('bookUrlPattern', _$bookUrlPattern, opt: true);
  static int _$customOrder(BookSource v) => v.customOrder;
  static const Field<BookSource, int> _f$customOrder =
      Field('customOrder', _$customOrder, opt: true, def: 0);
  static bool _$enabled(BookSource v) => v.enabled;
  static const Field<BookSource, bool> _f$enabled =
      Field('enabled', _$enabled, opt: true, def: true);
  static bool _$enabledExplore(BookSource v) => v.enabledExplore;
  static const Field<BookSource, bool> _f$enabledExplore =
      Field('enabledExplore', _$enabledExplore, opt: true, def: true);
  static String? _$jsLib(BookSource v) => v.jsLib;
  static const Field<BookSource, String> _f$jsLib =
      Field('jsLib', _$jsLib, opt: true);
  static bool? _$enabledCookieJar(BookSource v) => v.enabledCookieJar;
  static const Field<BookSource, bool> _f$enabledCookieJar =
      Field('enabledCookieJar', _$enabledCookieJar, opt: true, def: true);
  static String? _$concurrentRate(BookSource v) => v.concurrentRate;
  static const Field<BookSource, String> _f$concurrentRate =
      Field('concurrentRate', _$concurrentRate, opt: true);
  static String? _$header(BookSource v) => v.header;
  static const Field<BookSource, String> _f$header =
      Field('header', _$header, opt: true);
  static String? _$loginUrl(BookSource v) => v.loginUrl;
  static const Field<BookSource, String> _f$loginUrl =
      Field('loginUrl', _$loginUrl, opt: true);
  static String? _$loginUi(BookSource v) => v.loginUi;
  static const Field<BookSource, String> _f$loginUi =
      Field('loginUi', _$loginUi, opt: true);
  static String? _$loginCheckJs(BookSource v) => v.loginCheckJs;
  static const Field<BookSource, String> _f$loginCheckJs =
      Field('loginCheckJs', _$loginCheckJs, opt: true);
  static String? _$coverDecodeJs(BookSource v) => v.coverDecodeJs;
  static const Field<BookSource, String> _f$coverDecodeJs =
      Field('coverDecodeJs', _$coverDecodeJs, opt: true);
  static String? _$bookSourceComment(BookSource v) => v.bookSourceComment;
  static const Field<BookSource, String> _f$bookSourceComment =
      Field('bookSourceComment', _$bookSourceComment, opt: true);
  static String? _$variableComment(BookSource v) => v.variableComment;
  static const Field<BookSource, String> _f$variableComment =
      Field('variableComment', _$variableComment, opt: true);
  static int _$lastUpdateTime(BookSource v) => v.lastUpdateTime;
  static const Field<BookSource, int> _f$lastUpdateTime =
      Field('lastUpdateTime', _$lastUpdateTime, opt: true, def: 0);
  static int _$respondTime(BookSource v) => v.respondTime;
  static const Field<BookSource, int> _f$respondTime =
      Field('respondTime', _$respondTime, opt: true, def: 180000);
  static int _$weight(BookSource v) => v.weight;
  static const Field<BookSource, int> _f$weight =
      Field('weight', _$weight, opt: true, def: 0);
  static String? _$exploreUrl(BookSource v) => v.exploreUrl;
  static const Field<BookSource, String> _f$exploreUrl =
      Field('exploreUrl', _$exploreUrl, opt: true);
  static String? _$exploreScreen(BookSource v) => v.exploreScreen;
  static const Field<BookSource, String> _f$exploreScreen =
      Field('exploreScreen', _$exploreScreen, opt: true);
  static ExploreRule? _$ruleExplore(BookSource v) => v.ruleExplore;
  static const Field<BookSource, ExploreRule> _f$ruleExplore =
      Field('ruleExplore', _$ruleExplore, opt: true);
  static String? _$searchUrl(BookSource v) => v.searchUrl;
  static const Field<BookSource, String> _f$searchUrl =
      Field('searchUrl', _$searchUrl, opt: true);
  static SearchRule? _$ruleSearch(BookSource v) => v.ruleSearch;
  static const Field<BookSource, SearchRule> _f$ruleSearch =
      Field('ruleSearch', _$ruleSearch, opt: true);
  static BookInfoRule? _$ruleBookInfo(BookSource v) => v.ruleBookInfo;
  static const Field<BookSource, BookInfoRule> _f$ruleBookInfo =
      Field('ruleBookInfo', _$ruleBookInfo, opt: true);
  static TocRule? _$ruleToc(BookSource v) => v.ruleToc;
  static const Field<BookSource, TocRule> _f$ruleToc =
      Field('ruleToc', _$ruleToc, opt: true);
  static ContentRule? _$ruleContent(BookSource v) => v.ruleContent;
  static const Field<BookSource, ContentRule> _f$ruleContent =
      Field('ruleContent', _$ruleContent, opt: true);
  static ReviewRule? _$ruleReview(BookSource v) => v.ruleReview;
  static const Field<BookSource, ReviewRule> _f$ruleReview =
      Field('ruleReview', _$ruleReview, opt: true);
  static int _$id(BookSource v) => v.id;
  static const Field<BookSource, int> _f$id =
      Field('id', _$id, mode: FieldMode.member);

  @override
  final MappableFields<BookSource> fields = const {
    #bookSourceUrl: _f$bookSourceUrl,
    #bookSourceName: _f$bookSourceName,
    #bookSourceGroup: _f$bookSourceGroup,
    #bookSourceType: _f$bookSourceType,
    #bookUrlPattern: _f$bookUrlPattern,
    #customOrder: _f$customOrder,
    #enabled: _f$enabled,
    #enabledExplore: _f$enabledExplore,
    #jsLib: _f$jsLib,
    #enabledCookieJar: _f$enabledCookieJar,
    #concurrentRate: _f$concurrentRate,
    #header: _f$header,
    #loginUrl: _f$loginUrl,
    #loginUi: _f$loginUi,
    #loginCheckJs: _f$loginCheckJs,
    #coverDecodeJs: _f$coverDecodeJs,
    #bookSourceComment: _f$bookSourceComment,
    #variableComment: _f$variableComment,
    #lastUpdateTime: _f$lastUpdateTime,
    #respondTime: _f$respondTime,
    #weight: _f$weight,
    #exploreUrl: _f$exploreUrl,
    #exploreScreen: _f$exploreScreen,
    #ruleExplore: _f$ruleExplore,
    #searchUrl: _f$searchUrl,
    #ruleSearch: _f$ruleSearch,
    #ruleBookInfo: _f$ruleBookInfo,
    #ruleToc: _f$ruleToc,
    #ruleContent: _f$ruleContent,
    #ruleReview: _f$ruleReview,
    #id: _f$id,
  };

  static BookSource _instantiate(DecodingData data) {
    return BookSource(
        bookSourceUrl: data.dec(_f$bookSourceUrl),
        bookSourceName: data.dec(_f$bookSourceName),
        bookSourceGroup: data.dec(_f$bookSourceGroup),
        bookSourceType: data.dec(_f$bookSourceType),
        bookUrlPattern: data.dec(_f$bookUrlPattern),
        customOrder: data.dec(_f$customOrder),
        enabled: data.dec(_f$enabled),
        enabledExplore: data.dec(_f$enabledExplore),
        jsLib: data.dec(_f$jsLib),
        enabledCookieJar: data.dec(_f$enabledCookieJar),
        concurrentRate: data.dec(_f$concurrentRate),
        header: data.dec(_f$header),
        loginUrl: data.dec(_f$loginUrl),
        loginUi: data.dec(_f$loginUi),
        loginCheckJs: data.dec(_f$loginCheckJs),
        coverDecodeJs: data.dec(_f$coverDecodeJs),
        bookSourceComment: data.dec(_f$bookSourceComment),
        variableComment: data.dec(_f$variableComment),
        lastUpdateTime: data.dec(_f$lastUpdateTime),
        respondTime: data.dec(_f$respondTime),
        weight: data.dec(_f$weight),
        exploreUrl: data.dec(_f$exploreUrl),
        exploreScreen: data.dec(_f$exploreScreen),
        ruleExplore: data.dec(_f$ruleExplore),
        searchUrl: data.dec(_f$searchUrl),
        ruleSearch: data.dec(_f$ruleSearch),
        ruleBookInfo: data.dec(_f$ruleBookInfo),
        ruleToc: data.dec(_f$ruleToc),
        ruleContent: data.dec(_f$ruleContent),
        ruleReview: data.dec(_f$ruleReview));
  }

  @override
  final Function instantiate = _instantiate;

  static BookSource fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookSource>(map);
  }

  static BookSource fromJson(String json) {
    return ensureInitialized().decodeJson<BookSource>(json);
  }
}

mixin BookSourceMappable {
  String toJson() {
    return BookSourceMapper.ensureInitialized()
        .encodeJson<BookSource>(this as BookSource);
  }

  Map<String, dynamic> toMap() {
    return BookSourceMapper.ensureInitialized()
        .encodeMap<BookSource>(this as BookSource);
  }

  BookSourceCopyWith<BookSource, BookSource, BookSource> get copyWith =>
      _BookSourceCopyWithImpl(this as BookSource, $identity, $identity);
  @override
  String toString() {
    return BookSourceMapper.ensureInitialized()
        .stringifyValue(this as BookSource);
  }

  @override
  bool operator ==(Object other) {
    return BookSourceMapper.ensureInitialized()
        .equalsValue(this as BookSource, other);
  }

  @override
  int get hashCode {
    return BookSourceMapper.ensureInitialized().hashValue(this as BookSource);
  }
}

extension BookSourceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookSource, $Out> {
  BookSourceCopyWith<$R, BookSource, $Out> get $asBookSource =>
      $base.as((v, t, t2) => _BookSourceCopyWithImpl(v, t, t2));
}

abstract class BookSourceCopyWith<$R, $In extends BookSource, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ExploreRuleCopyWith<$R, ExploreRule, ExploreRule>? get ruleExplore;
  SearchRuleCopyWith<$R, SearchRule, SearchRule>? get ruleSearch;
  BookInfoRuleCopyWith<$R, BookInfoRule, BookInfoRule>? get ruleBookInfo;
  TocRuleCopyWith<$R, TocRule, TocRule>? get ruleToc;
  ContentRuleCopyWith<$R, ContentRule, ContentRule>? get ruleContent;
  ReviewRuleCopyWith<$R, ReviewRule, ReviewRule>? get ruleReview;
  $R call(
      {String? bookSourceUrl,
      String? bookSourceName,
      String? bookSourceGroup,
      int? bookSourceType,
      String? bookUrlPattern,
      int? customOrder,
      bool? enabled,
      bool? enabledExplore,
      String? jsLib,
      bool? enabledCookieJar,
      String? concurrentRate,
      String? header,
      String? loginUrl,
      String? loginUi,
      String? loginCheckJs,
      String? coverDecodeJs,
      String? bookSourceComment,
      String? variableComment,
      int? lastUpdateTime,
      int? respondTime,
      int? weight,
      String? exploreUrl,
      String? exploreScreen,
      ExploreRule? ruleExplore,
      String? searchUrl,
      SearchRule? ruleSearch,
      BookInfoRule? ruleBookInfo,
      TocRule? ruleToc,
      ContentRule? ruleContent,
      ReviewRule? ruleReview});
  BookSourceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BookSourceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookSource, $Out>
    implements BookSourceCopyWith<$R, BookSource, $Out> {
  _BookSourceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookSource> $mapper =
      BookSourceMapper.ensureInitialized();
  @override
  ExploreRuleCopyWith<$R, ExploreRule, ExploreRule>? get ruleExplore =>
      $value.ruleExplore?.copyWith.$chain((v) => call(ruleExplore: v));
  @override
  SearchRuleCopyWith<$R, SearchRule, SearchRule>? get ruleSearch =>
      $value.ruleSearch?.copyWith.$chain((v) => call(ruleSearch: v));
  @override
  BookInfoRuleCopyWith<$R, BookInfoRule, BookInfoRule>? get ruleBookInfo =>
      $value.ruleBookInfo?.copyWith.$chain((v) => call(ruleBookInfo: v));
  @override
  TocRuleCopyWith<$R, TocRule, TocRule>? get ruleToc =>
      $value.ruleToc?.copyWith.$chain((v) => call(ruleToc: v));
  @override
  ContentRuleCopyWith<$R, ContentRule, ContentRule>? get ruleContent =>
      $value.ruleContent?.copyWith.$chain((v) => call(ruleContent: v));
  @override
  ReviewRuleCopyWith<$R, ReviewRule, ReviewRule>? get ruleReview =>
      $value.ruleReview?.copyWith.$chain((v) => call(ruleReview: v));
  @override
  $R call(
          {String? bookSourceUrl,
          String? bookSourceName,
          Object? bookSourceGroup = $none,
          int? bookSourceType,
          Object? bookUrlPattern = $none,
          int? customOrder,
          bool? enabled,
          bool? enabledExplore,
          Object? jsLib = $none,
          Object? enabledCookieJar = $none,
          Object? concurrentRate = $none,
          Object? header = $none,
          Object? loginUrl = $none,
          Object? loginUi = $none,
          Object? loginCheckJs = $none,
          Object? coverDecodeJs = $none,
          Object? bookSourceComment = $none,
          Object? variableComment = $none,
          int? lastUpdateTime,
          int? respondTime,
          int? weight,
          Object? exploreUrl = $none,
          Object? exploreScreen = $none,
          Object? ruleExplore = $none,
          Object? searchUrl = $none,
          Object? ruleSearch = $none,
          Object? ruleBookInfo = $none,
          Object? ruleToc = $none,
          Object? ruleContent = $none,
          Object? ruleReview = $none}) =>
      $apply(FieldCopyWithData({
        if (bookSourceUrl != null) #bookSourceUrl: bookSourceUrl,
        if (bookSourceName != null) #bookSourceName: bookSourceName,
        if (bookSourceGroup != $none) #bookSourceGroup: bookSourceGroup,
        if (bookSourceType != null) #bookSourceType: bookSourceType,
        if (bookUrlPattern != $none) #bookUrlPattern: bookUrlPattern,
        if (customOrder != null) #customOrder: customOrder,
        if (enabled != null) #enabled: enabled,
        if (enabledExplore != null) #enabledExplore: enabledExplore,
        if (jsLib != $none) #jsLib: jsLib,
        if (enabledCookieJar != $none) #enabledCookieJar: enabledCookieJar,
        if (concurrentRate != $none) #concurrentRate: concurrentRate,
        if (header != $none) #header: header,
        if (loginUrl != $none) #loginUrl: loginUrl,
        if (loginUi != $none) #loginUi: loginUi,
        if (loginCheckJs != $none) #loginCheckJs: loginCheckJs,
        if (coverDecodeJs != $none) #coverDecodeJs: coverDecodeJs,
        if (bookSourceComment != $none) #bookSourceComment: bookSourceComment,
        if (variableComment != $none) #variableComment: variableComment,
        if (lastUpdateTime != null) #lastUpdateTime: lastUpdateTime,
        if (respondTime != null) #respondTime: respondTime,
        if (weight != null) #weight: weight,
        if (exploreUrl != $none) #exploreUrl: exploreUrl,
        if (exploreScreen != $none) #exploreScreen: exploreScreen,
        if (ruleExplore != $none) #ruleExplore: ruleExplore,
        if (searchUrl != $none) #searchUrl: searchUrl,
        if (ruleSearch != $none) #ruleSearch: ruleSearch,
        if (ruleBookInfo != $none) #ruleBookInfo: ruleBookInfo,
        if (ruleToc != $none) #ruleToc: ruleToc,
        if (ruleContent != $none) #ruleContent: ruleContent,
        if (ruleReview != $none) #ruleReview: ruleReview
      }));
  @override
  BookSource $make(CopyWithData data) => BookSource(
      bookSourceUrl: data.get(#bookSourceUrl, or: $value.bookSourceUrl),
      bookSourceName: data.get(#bookSourceName, or: $value.bookSourceName),
      bookSourceGroup: data.get(#bookSourceGroup, or: $value.bookSourceGroup),
      bookSourceType: data.get(#bookSourceType, or: $value.bookSourceType),
      bookUrlPattern: data.get(#bookUrlPattern, or: $value.bookUrlPattern),
      customOrder: data.get(#customOrder, or: $value.customOrder),
      enabled: data.get(#enabled, or: $value.enabled),
      enabledExplore: data.get(#enabledExplore, or: $value.enabledExplore),
      jsLib: data.get(#jsLib, or: $value.jsLib),
      enabledCookieJar:
          data.get(#enabledCookieJar, or: $value.enabledCookieJar),
      concurrentRate: data.get(#concurrentRate, or: $value.concurrentRate),
      header: data.get(#header, or: $value.header),
      loginUrl: data.get(#loginUrl, or: $value.loginUrl),
      loginUi: data.get(#loginUi, or: $value.loginUi),
      loginCheckJs: data.get(#loginCheckJs, or: $value.loginCheckJs),
      coverDecodeJs: data.get(#coverDecodeJs, or: $value.coverDecodeJs),
      bookSourceComment:
          data.get(#bookSourceComment, or: $value.bookSourceComment),
      variableComment: data.get(#variableComment, or: $value.variableComment),
      lastUpdateTime: data.get(#lastUpdateTime, or: $value.lastUpdateTime),
      respondTime: data.get(#respondTime, or: $value.respondTime),
      weight: data.get(#weight, or: $value.weight),
      exploreUrl: data.get(#exploreUrl, or: $value.exploreUrl),
      exploreScreen: data.get(#exploreScreen, or: $value.exploreScreen),
      ruleExplore: data.get(#ruleExplore, or: $value.ruleExplore),
      searchUrl: data.get(#searchUrl, or: $value.searchUrl),
      ruleSearch: data.get(#ruleSearch, or: $value.ruleSearch),
      ruleBookInfo: data.get(#ruleBookInfo, or: $value.ruleBookInfo),
      ruleToc: data.get(#ruleToc, or: $value.ruleToc),
      ruleContent: data.get(#ruleContent, or: $value.ruleContent),
      ruleReview: data.get(#ruleReview, or: $value.ruleReview));

  @override
  BookSourceCopyWith<$R2, BookSource, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BookSourceCopyWithImpl($value, $cast, t);
}
