// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'content_rule.dart';

class ContentRuleMapper extends ClassMapperBase<ContentRule> {
  ContentRuleMapper._();

  static ContentRuleMapper? _instance;
  static ContentRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentRuleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ContentRule';

  static String? _$content(ContentRule v) => v.content;
  static const Field<ContentRule, String> _f$content =
      Field('content', _$content, opt: true);
  static String? _$title(ContentRule v) => v.title;
  static const Field<ContentRule, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$nextContentUrl(ContentRule v) => v.nextContentUrl;
  static const Field<ContentRule, String> _f$nextContentUrl =
      Field('nextContentUrl', _$nextContentUrl, opt: true);
  static String? _$webJs(ContentRule v) => v.webJs;
  static const Field<ContentRule, String> _f$webJs =
      Field('webJs', _$webJs, opt: true);
  static String? _$sourceRegex(ContentRule v) => v.sourceRegex;
  static const Field<ContentRule, String> _f$sourceRegex =
      Field('sourceRegex', _$sourceRegex, opt: true);
  static String? _$replaceRegex(ContentRule v) => v.replaceRegex;
  static const Field<ContentRule, String> _f$replaceRegex =
      Field('replaceRegex', _$replaceRegex, opt: true);
  static String? _$imageStyle(ContentRule v) => v.imageStyle;
  static const Field<ContentRule, String> _f$imageStyle =
      Field('imageStyle', _$imageStyle, opt: true);
  static String? _$imageDecode(ContentRule v) => v.imageDecode;
  static const Field<ContentRule, String> _f$imageDecode =
      Field('imageDecode', _$imageDecode, opt: true);
  static String? _$payAction(ContentRule v) => v.payAction;
  static const Field<ContentRule, String> _f$payAction =
      Field('payAction', _$payAction, opt: true);

  @override
  final MappableFields<ContentRule> fields = const {
    #content: _f$content,
    #title: _f$title,
    #nextContentUrl: _f$nextContentUrl,
    #webJs: _f$webJs,
    #sourceRegex: _f$sourceRegex,
    #replaceRegex: _f$replaceRegex,
    #imageStyle: _f$imageStyle,
    #imageDecode: _f$imageDecode,
    #payAction: _f$payAction,
  };

  static ContentRule _instantiate(DecodingData data) {
    return ContentRule(
        content: data.dec(_f$content),
        title: data.dec(_f$title),
        nextContentUrl: data.dec(_f$nextContentUrl),
        webJs: data.dec(_f$webJs),
        sourceRegex: data.dec(_f$sourceRegex),
        replaceRegex: data.dec(_f$replaceRegex),
        imageStyle: data.dec(_f$imageStyle),
        imageDecode: data.dec(_f$imageDecode),
        payAction: data.dec(_f$payAction));
  }

  @override
  final Function instantiate = _instantiate;

  static ContentRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ContentRule>(map);
  }

  static ContentRule fromJson(String json) {
    return ensureInitialized().decodeJson<ContentRule>(json);
  }
}

mixin ContentRuleMappable {
  String toJson() {
    return ContentRuleMapper.ensureInitialized()
        .encodeJson<ContentRule>(this as ContentRule);
  }

  Map<String, dynamic> toMap() {
    return ContentRuleMapper.ensureInitialized()
        .encodeMap<ContentRule>(this as ContentRule);
  }

  ContentRuleCopyWith<ContentRule, ContentRule, ContentRule> get copyWith =>
      _ContentRuleCopyWithImpl(this as ContentRule, $identity, $identity);
  @override
  String toString() {
    return ContentRuleMapper.ensureInitialized()
        .stringifyValue(this as ContentRule);
  }

  @override
  bool operator ==(Object other) {
    return ContentRuleMapper.ensureInitialized()
        .equalsValue(this as ContentRule, other);
  }

  @override
  int get hashCode {
    return ContentRuleMapper.ensureInitialized().hashValue(this as ContentRule);
  }
}

extension ContentRuleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ContentRule, $Out> {
  ContentRuleCopyWith<$R, ContentRule, $Out> get $asContentRule =>
      $base.as((v, t, t2) => _ContentRuleCopyWithImpl(v, t, t2));
}

abstract class ContentRuleCopyWith<$R, $In extends ContentRule, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? content,
      String? title,
      String? nextContentUrl,
      String? webJs,
      String? sourceRegex,
      String? replaceRegex,
      String? imageStyle,
      String? imageDecode,
      String? payAction});
  ContentRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ContentRuleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ContentRule, $Out>
    implements ContentRuleCopyWith<$R, ContentRule, $Out> {
  _ContentRuleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ContentRule> $mapper =
      ContentRuleMapper.ensureInitialized();
  @override
  $R call(
          {Object? content = $none,
          Object? title = $none,
          Object? nextContentUrl = $none,
          Object? webJs = $none,
          Object? sourceRegex = $none,
          Object? replaceRegex = $none,
          Object? imageStyle = $none,
          Object? imageDecode = $none,
          Object? payAction = $none}) =>
      $apply(FieldCopyWithData({
        if (content != $none) #content: content,
        if (title != $none) #title: title,
        if (nextContentUrl != $none) #nextContentUrl: nextContentUrl,
        if (webJs != $none) #webJs: webJs,
        if (sourceRegex != $none) #sourceRegex: sourceRegex,
        if (replaceRegex != $none) #replaceRegex: replaceRegex,
        if (imageStyle != $none) #imageStyle: imageStyle,
        if (imageDecode != $none) #imageDecode: imageDecode,
        if (payAction != $none) #payAction: payAction
      }));
  @override
  ContentRule $make(CopyWithData data) => ContentRule(
      content: data.get(#content, or: $value.content),
      title: data.get(#title, or: $value.title),
      nextContentUrl: data.get(#nextContentUrl, or: $value.nextContentUrl),
      webJs: data.get(#webJs, or: $value.webJs),
      sourceRegex: data.get(#sourceRegex, or: $value.sourceRegex),
      replaceRegex: data.get(#replaceRegex, or: $value.replaceRegex),
      imageStyle: data.get(#imageStyle, or: $value.imageStyle),
      imageDecode: data.get(#imageDecode, or: $value.imageDecode),
      payAction: data.get(#payAction, or: $value.payAction));

  @override
  ContentRuleCopyWith<$R2, ContentRule, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ContentRuleCopyWithImpl($value, $cast, t);
}
