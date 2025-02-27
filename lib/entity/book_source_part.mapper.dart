// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'book_source_part.dart';

class BookSourcePartMapper extends ClassMapperBase<BookSourcePart> {
  BookSourcePartMapper._();

  static BookSourcePartMapper? _instance;
  static BookSourcePartMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BookSourcePartMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BookSourcePart';

  static String _$bookSourceUrl(BookSourcePart v) => v.bookSourceUrl;
  static const Field<BookSourcePart, String> _f$bookSourceUrl =
      Field('bookSourceUrl', _$bookSourceUrl, opt: true, def: '');
  static String? _$bookSourceName(BookSourcePart v) => v.bookSourceName;
  static const Field<BookSourcePart, String> _f$bookSourceName =
      Field('bookSourceName', _$bookSourceName, opt: true, def: '');
  static String? _$bookSourceGroup(BookSourcePart v) => v.bookSourceGroup;
  static const Field<BookSourcePart, String> _f$bookSourceGroup =
      Field('bookSourceGroup', _$bookSourceGroup, opt: true);
  static int? _$customOrder(BookSourcePart v) => v.customOrder;
  static const Field<BookSourcePart, int> _f$customOrder =
      Field('customOrder', _$customOrder, opt: true, def: 0);
  static bool? _$enabled(BookSourcePart v) => v.enabled;
  static const Field<BookSourcePart, bool> _f$enabled =
      Field('enabled', _$enabled, opt: true, def: true);
  static bool? _$enabledExplore(BookSourcePart v) => v.enabledExplore;
  static const Field<BookSourcePart, bool> _f$enabledExplore =
      Field('enabledExplore', _$enabledExplore, opt: true, def: true);
  static bool? _$hasLoginUrl(BookSourcePart v) => v.hasLoginUrl;
  static const Field<BookSourcePart, bool> _f$hasLoginUrl =
      Field('hasLoginUrl', _$hasLoginUrl, opt: true, def: false);
  static int? _$lastUpdateTime(BookSourcePart v) => v.lastUpdateTime;
  static const Field<BookSourcePart, int> _f$lastUpdateTime =
      Field('lastUpdateTime', _$lastUpdateTime, opt: true, def: 0);
  static int? _$respondTime(BookSourcePart v) => v.respondTime;
  static const Field<BookSourcePart, int> _f$respondTime =
      Field('respondTime', _$respondTime, opt: true, def: 180000);
  static int? _$weight(BookSourcePart v) => v.weight;
  static const Field<BookSourcePart, int> _f$weight =
      Field('weight', _$weight, opt: true, def: 0);
  static bool? _$hasExploreUrl(BookSourcePart v) => v.hasExploreUrl;
  static const Field<BookSourcePart, bool> _f$hasExploreUrl =
      Field('hasExploreUrl', _$hasExploreUrl, opt: true, def: false);

  @override
  final MappableFields<BookSourcePart> fields = const {
    #bookSourceUrl: _f$bookSourceUrl,
    #bookSourceName: _f$bookSourceName,
    #bookSourceGroup: _f$bookSourceGroup,
    #customOrder: _f$customOrder,
    #enabled: _f$enabled,
    #enabledExplore: _f$enabledExplore,
    #hasLoginUrl: _f$hasLoginUrl,
    #lastUpdateTime: _f$lastUpdateTime,
    #respondTime: _f$respondTime,
    #weight: _f$weight,
    #hasExploreUrl: _f$hasExploreUrl,
  };

  static BookSourcePart _instantiate(DecodingData data) {
    return BookSourcePart(
        bookSourceUrl: data.dec(_f$bookSourceUrl),
        bookSourceName: data.dec(_f$bookSourceName),
        bookSourceGroup: data.dec(_f$bookSourceGroup),
        customOrder: data.dec(_f$customOrder),
        enabled: data.dec(_f$enabled),
        enabledExplore: data.dec(_f$enabledExplore),
        hasLoginUrl: data.dec(_f$hasLoginUrl),
        lastUpdateTime: data.dec(_f$lastUpdateTime),
        respondTime: data.dec(_f$respondTime),
        weight: data.dec(_f$weight),
        hasExploreUrl: data.dec(_f$hasExploreUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static BookSourcePart fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BookSourcePart>(map);
  }

  static BookSourcePart fromJson(String json) {
    return ensureInitialized().decodeJson<BookSourcePart>(json);
  }
}

mixin BookSourcePartMappable {
  String toJson() {
    return BookSourcePartMapper.ensureInitialized()
        .encodeJson<BookSourcePart>(this as BookSourcePart);
  }

  Map<String, dynamic> toMap() {
    return BookSourcePartMapper.ensureInitialized()
        .encodeMap<BookSourcePart>(this as BookSourcePart);
  }

  BookSourcePartCopyWith<BookSourcePart, BookSourcePart, BookSourcePart>
      get copyWith => _BookSourcePartCopyWithImpl(
          this as BookSourcePart, $identity, $identity);
  @override
  String toString() {
    return BookSourcePartMapper.ensureInitialized()
        .stringifyValue(this as BookSourcePart);
  }

  @override
  bool operator ==(Object other) {
    return BookSourcePartMapper.ensureInitialized()
        .equalsValue(this as BookSourcePart, other);
  }

  @override
  int get hashCode {
    return BookSourcePartMapper.ensureInitialized()
        .hashValue(this as BookSourcePart);
  }
}

extension BookSourcePartValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BookSourcePart, $Out> {
  BookSourcePartCopyWith<$R, BookSourcePart, $Out> get $asBookSourcePart =>
      $base.as((v, t, t2) => _BookSourcePartCopyWithImpl(v, t, t2));
}

abstract class BookSourcePartCopyWith<$R, $In extends BookSourcePart, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? bookSourceUrl,
      String? bookSourceName,
      String? bookSourceGroup,
      int? customOrder,
      bool? enabled,
      bool? enabledExplore,
      bool? hasLoginUrl,
      int? lastUpdateTime,
      int? respondTime,
      int? weight,
      bool? hasExploreUrl});
  BookSourcePartCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BookSourcePartCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BookSourcePart, $Out>
    implements BookSourcePartCopyWith<$R, BookSourcePart, $Out> {
  _BookSourcePartCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BookSourcePart> $mapper =
      BookSourcePartMapper.ensureInitialized();
  @override
  $R call(
          {String? bookSourceUrl,
          Object? bookSourceName = $none,
          Object? bookSourceGroup = $none,
          Object? customOrder = $none,
          Object? enabled = $none,
          Object? enabledExplore = $none,
          Object? hasLoginUrl = $none,
          Object? lastUpdateTime = $none,
          Object? respondTime = $none,
          Object? weight = $none,
          Object? hasExploreUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (bookSourceUrl != null) #bookSourceUrl: bookSourceUrl,
        if (bookSourceName != $none) #bookSourceName: bookSourceName,
        if (bookSourceGroup != $none) #bookSourceGroup: bookSourceGroup,
        if (customOrder != $none) #customOrder: customOrder,
        if (enabled != $none) #enabled: enabled,
        if (enabledExplore != $none) #enabledExplore: enabledExplore,
        if (hasLoginUrl != $none) #hasLoginUrl: hasLoginUrl,
        if (lastUpdateTime != $none) #lastUpdateTime: lastUpdateTime,
        if (respondTime != $none) #respondTime: respondTime,
        if (weight != $none) #weight: weight,
        if (hasExploreUrl != $none) #hasExploreUrl: hasExploreUrl
      }));
  @override
  BookSourcePart $make(CopyWithData data) => BookSourcePart(
      bookSourceUrl: data.get(#bookSourceUrl, or: $value.bookSourceUrl),
      bookSourceName: data.get(#bookSourceName, or: $value.bookSourceName),
      bookSourceGroup: data.get(#bookSourceGroup, or: $value.bookSourceGroup),
      customOrder: data.get(#customOrder, or: $value.customOrder),
      enabled: data.get(#enabled, or: $value.enabled),
      enabledExplore: data.get(#enabledExplore, or: $value.enabledExplore),
      hasLoginUrl: data.get(#hasLoginUrl, or: $value.hasLoginUrl),
      lastUpdateTime: data.get(#lastUpdateTime, or: $value.lastUpdateTime),
      respondTime: data.get(#respondTime, or: $value.respondTime),
      weight: data.get(#weight, or: $value.weight),
      hasExploreUrl: data.get(#hasExploreUrl, or: $value.hasExploreUrl));

  @override
  BookSourcePartCopyWith<$R2, BookSourcePart, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BookSourcePartCopyWithImpl($value, $cast, t);
}
