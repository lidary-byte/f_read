// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'toc_rule.dart';

class TocRuleMapper extends ClassMapperBase<TocRule> {
  TocRuleMapper._();

  static TocRuleMapper? _instance;
  static TocRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TocRuleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TocRule';

  static String? _$preUpdateJs(TocRule v) => v.preUpdateJs;
  static const Field<TocRule, String> _f$preUpdateJs =
      Field('preUpdateJs', _$preUpdateJs, opt: true);
  static String? _$chapterList(TocRule v) => v.chapterList;
  static const Field<TocRule, String> _f$chapterList =
      Field('chapterList', _$chapterList, opt: true);
  static String? _$chapterName(TocRule v) => v.chapterName;
  static const Field<TocRule, String> _f$chapterName =
      Field('chapterName', _$chapterName, opt: true);
  static String? _$chapterUrl(TocRule v) => v.chapterUrl;
  static const Field<TocRule, String> _f$chapterUrl =
      Field('chapterUrl', _$chapterUrl, opt: true);
  static String? _$formatJs(TocRule v) => v.formatJs;
  static const Field<TocRule, String> _f$formatJs =
      Field('formatJs', _$formatJs, opt: true);
  static String? _$isVolume(TocRule v) => v.isVolume;
  static const Field<TocRule, String> _f$isVolume =
      Field('isVolume', _$isVolume, opt: true);
  static String? _$isVip(TocRule v) => v.isVip;
  static const Field<TocRule, String> _f$isVip =
      Field('isVip', _$isVip, opt: true);
  static String? _$isPay(TocRule v) => v.isPay;
  static const Field<TocRule, String> _f$isPay =
      Field('isPay', _$isPay, opt: true);
  static String? _$updateTime(TocRule v) => v.updateTime;
  static const Field<TocRule, String> _f$updateTime =
      Field('updateTime', _$updateTime, opt: true);
  static String? _$nextTocUrl(TocRule v) => v.nextTocUrl;
  static const Field<TocRule, String> _f$nextTocUrl =
      Field('nextTocUrl', _$nextTocUrl, opt: true);

  @override
  final MappableFields<TocRule> fields = const {
    #preUpdateJs: _f$preUpdateJs,
    #chapterList: _f$chapterList,
    #chapterName: _f$chapterName,
    #chapterUrl: _f$chapterUrl,
    #formatJs: _f$formatJs,
    #isVolume: _f$isVolume,
    #isVip: _f$isVip,
    #isPay: _f$isPay,
    #updateTime: _f$updateTime,
    #nextTocUrl: _f$nextTocUrl,
  };

  static TocRule _instantiate(DecodingData data) {
    return TocRule(
        preUpdateJs: data.dec(_f$preUpdateJs),
        chapterList: data.dec(_f$chapterList),
        chapterName: data.dec(_f$chapterName),
        chapterUrl: data.dec(_f$chapterUrl),
        formatJs: data.dec(_f$formatJs),
        isVolume: data.dec(_f$isVolume),
        isVip: data.dec(_f$isVip),
        isPay: data.dec(_f$isPay),
        updateTime: data.dec(_f$updateTime),
        nextTocUrl: data.dec(_f$nextTocUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static TocRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TocRule>(map);
  }

  static TocRule fromJson(String json) {
    return ensureInitialized().decodeJson<TocRule>(json);
  }
}

mixin TocRuleMappable {
  String toJson() {
    return TocRuleMapper.ensureInitialized()
        .encodeJson<TocRule>(this as TocRule);
  }

  Map<String, dynamic> toMap() {
    return TocRuleMapper.ensureInitialized()
        .encodeMap<TocRule>(this as TocRule);
  }

  TocRuleCopyWith<TocRule, TocRule, TocRule> get copyWith =>
      _TocRuleCopyWithImpl(this as TocRule, $identity, $identity);
  @override
  String toString() {
    return TocRuleMapper.ensureInitialized().stringifyValue(this as TocRule);
  }

  @override
  bool operator ==(Object other) {
    return TocRuleMapper.ensureInitialized()
        .equalsValue(this as TocRule, other);
  }

  @override
  int get hashCode {
    return TocRuleMapper.ensureInitialized().hashValue(this as TocRule);
  }
}

extension TocRuleValueCopy<$R, $Out> on ObjectCopyWith<$R, TocRule, $Out> {
  TocRuleCopyWith<$R, TocRule, $Out> get $asTocRule =>
      $base.as((v, t, t2) => _TocRuleCopyWithImpl(v, t, t2));
}

abstract class TocRuleCopyWith<$R, $In extends TocRule, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? preUpdateJs,
      String? chapterList,
      String? chapterName,
      String? chapterUrl,
      String? formatJs,
      String? isVolume,
      String? isVip,
      String? isPay,
      String? updateTime,
      String? nextTocUrl});
  TocRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TocRuleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TocRule, $Out>
    implements TocRuleCopyWith<$R, TocRule, $Out> {
  _TocRuleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TocRule> $mapper =
      TocRuleMapper.ensureInitialized();
  @override
  $R call(
          {Object? preUpdateJs = $none,
          Object? chapterList = $none,
          Object? chapterName = $none,
          Object? chapterUrl = $none,
          Object? formatJs = $none,
          Object? isVolume = $none,
          Object? isVip = $none,
          Object? isPay = $none,
          Object? updateTime = $none,
          Object? nextTocUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (preUpdateJs != $none) #preUpdateJs: preUpdateJs,
        if (chapterList != $none) #chapterList: chapterList,
        if (chapterName != $none) #chapterName: chapterName,
        if (chapterUrl != $none) #chapterUrl: chapterUrl,
        if (formatJs != $none) #formatJs: formatJs,
        if (isVolume != $none) #isVolume: isVolume,
        if (isVip != $none) #isVip: isVip,
        if (isPay != $none) #isPay: isPay,
        if (updateTime != $none) #updateTime: updateTime,
        if (nextTocUrl != $none) #nextTocUrl: nextTocUrl
      }));
  @override
  TocRule $make(CopyWithData data) => TocRule(
      preUpdateJs: data.get(#preUpdateJs, or: $value.preUpdateJs),
      chapterList: data.get(#chapterList, or: $value.chapterList),
      chapterName: data.get(#chapterName, or: $value.chapterName),
      chapterUrl: data.get(#chapterUrl, or: $value.chapterUrl),
      formatJs: data.get(#formatJs, or: $value.formatJs),
      isVolume: data.get(#isVolume, or: $value.isVolume),
      isVip: data.get(#isVip, or: $value.isVip),
      isPay: data.get(#isPay, or: $value.isPay),
      updateTime: data.get(#updateTime, or: $value.updateTime),
      nextTocUrl: data.get(#nextTocUrl, or: $value.nextTocUrl));

  @override
  TocRuleCopyWith<$R2, TocRule, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TocRuleCopyWithImpl($value, $cast, t);
}
