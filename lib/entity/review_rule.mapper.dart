// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'review_rule.dart';

class ReviewRuleMapper extends ClassMapperBase<ReviewRule> {
  ReviewRuleMapper._();

  static ReviewRuleMapper? _instance;
  static ReviewRuleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReviewRuleMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ReviewRule';

  static String? _$reviewUrl(ReviewRule v) => v.reviewUrl;
  static const Field<ReviewRule, String> _f$reviewUrl =
      Field('reviewUrl', _$reviewUrl, opt: true);
  static String? _$avatarRule(ReviewRule v) => v.avatarRule;
  static const Field<ReviewRule, String> _f$avatarRule =
      Field('avatarRule', _$avatarRule, opt: true);
  static String? _$contentRule(ReviewRule v) => v.contentRule;
  static const Field<ReviewRule, String> _f$contentRule =
      Field('contentRule', _$contentRule, opt: true);
  static String? _$postTimeRule(ReviewRule v) => v.postTimeRule;
  static const Field<ReviewRule, String> _f$postTimeRule =
      Field('postTimeRule', _$postTimeRule, opt: true);
  static String? _$reviewQuoteUrl(ReviewRule v) => v.reviewQuoteUrl;
  static const Field<ReviewRule, String> _f$reviewQuoteUrl =
      Field('reviewQuoteUrl', _$reviewQuoteUrl, opt: true);
  static String? _$voteUpUrl(ReviewRule v) => v.voteUpUrl;
  static const Field<ReviewRule, String> _f$voteUpUrl =
      Field('voteUpUrl', _$voteUpUrl, opt: true);
  static String? _$voteDownUrl(ReviewRule v) => v.voteDownUrl;
  static const Field<ReviewRule, String> _f$voteDownUrl =
      Field('voteDownUrl', _$voteDownUrl, opt: true);
  static String? _$postReviewUrl(ReviewRule v) => v.postReviewUrl;
  static const Field<ReviewRule, String> _f$postReviewUrl =
      Field('postReviewUrl', _$postReviewUrl, opt: true);
  static String? _$postQuoteUrl(ReviewRule v) => v.postQuoteUrl;
  static const Field<ReviewRule, String> _f$postQuoteUrl =
      Field('postQuoteUrl', _$postQuoteUrl, opt: true);
  static String? _$deleteUrl(ReviewRule v) => v.deleteUrl;
  static const Field<ReviewRule, String> _f$deleteUrl =
      Field('deleteUrl', _$deleteUrl, opt: true);

  @override
  final MappableFields<ReviewRule> fields = const {
    #reviewUrl: _f$reviewUrl,
    #avatarRule: _f$avatarRule,
    #contentRule: _f$contentRule,
    #postTimeRule: _f$postTimeRule,
    #reviewQuoteUrl: _f$reviewQuoteUrl,
    #voteUpUrl: _f$voteUpUrl,
    #voteDownUrl: _f$voteDownUrl,
    #postReviewUrl: _f$postReviewUrl,
    #postQuoteUrl: _f$postQuoteUrl,
    #deleteUrl: _f$deleteUrl,
  };

  static ReviewRule _instantiate(DecodingData data) {
    return ReviewRule(
        reviewUrl: data.dec(_f$reviewUrl),
        avatarRule: data.dec(_f$avatarRule),
        contentRule: data.dec(_f$contentRule),
        postTimeRule: data.dec(_f$postTimeRule),
        reviewQuoteUrl: data.dec(_f$reviewQuoteUrl),
        voteUpUrl: data.dec(_f$voteUpUrl),
        voteDownUrl: data.dec(_f$voteDownUrl),
        postReviewUrl: data.dec(_f$postReviewUrl),
        postQuoteUrl: data.dec(_f$postQuoteUrl),
        deleteUrl: data.dec(_f$deleteUrl));
  }

  @override
  final Function instantiate = _instantiate;

  static ReviewRule fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReviewRule>(map);
  }

  static ReviewRule fromJson(String json) {
    return ensureInitialized().decodeJson<ReviewRule>(json);
  }
}

mixin ReviewRuleMappable {
  String toJson() {
    return ReviewRuleMapper.ensureInitialized()
        .encodeJson<ReviewRule>(this as ReviewRule);
  }

  Map<String, dynamic> toMap() {
    return ReviewRuleMapper.ensureInitialized()
        .encodeMap<ReviewRule>(this as ReviewRule);
  }

  ReviewRuleCopyWith<ReviewRule, ReviewRule, ReviewRule> get copyWith =>
      _ReviewRuleCopyWithImpl(this as ReviewRule, $identity, $identity);
  @override
  String toString() {
    return ReviewRuleMapper.ensureInitialized()
        .stringifyValue(this as ReviewRule);
  }

  @override
  bool operator ==(Object other) {
    return ReviewRuleMapper.ensureInitialized()
        .equalsValue(this as ReviewRule, other);
  }

  @override
  int get hashCode {
    return ReviewRuleMapper.ensureInitialized().hashValue(this as ReviewRule);
  }
}

extension ReviewRuleValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReviewRule, $Out> {
  ReviewRuleCopyWith<$R, ReviewRule, $Out> get $asReviewRule =>
      $base.as((v, t, t2) => _ReviewRuleCopyWithImpl(v, t, t2));
}

abstract class ReviewRuleCopyWith<$R, $In extends ReviewRule, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? reviewUrl,
      String? avatarRule,
      String? contentRule,
      String? postTimeRule,
      String? reviewQuoteUrl,
      String? voteUpUrl,
      String? voteDownUrl,
      String? postReviewUrl,
      String? postQuoteUrl,
      String? deleteUrl});
  ReviewRuleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ReviewRuleCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReviewRule, $Out>
    implements ReviewRuleCopyWith<$R, ReviewRule, $Out> {
  _ReviewRuleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReviewRule> $mapper =
      ReviewRuleMapper.ensureInitialized();
  @override
  $R call(
          {Object? reviewUrl = $none,
          Object? avatarRule = $none,
          Object? contentRule = $none,
          Object? postTimeRule = $none,
          Object? reviewQuoteUrl = $none,
          Object? voteUpUrl = $none,
          Object? voteDownUrl = $none,
          Object? postReviewUrl = $none,
          Object? postQuoteUrl = $none,
          Object? deleteUrl = $none}) =>
      $apply(FieldCopyWithData({
        if (reviewUrl != $none) #reviewUrl: reviewUrl,
        if (avatarRule != $none) #avatarRule: avatarRule,
        if (contentRule != $none) #contentRule: contentRule,
        if (postTimeRule != $none) #postTimeRule: postTimeRule,
        if (reviewQuoteUrl != $none) #reviewQuoteUrl: reviewQuoteUrl,
        if (voteUpUrl != $none) #voteUpUrl: voteUpUrl,
        if (voteDownUrl != $none) #voteDownUrl: voteDownUrl,
        if (postReviewUrl != $none) #postReviewUrl: postReviewUrl,
        if (postQuoteUrl != $none) #postQuoteUrl: postQuoteUrl,
        if (deleteUrl != $none) #deleteUrl: deleteUrl
      }));
  @override
  ReviewRule $make(CopyWithData data) => ReviewRule(
      reviewUrl: data.get(#reviewUrl, or: $value.reviewUrl),
      avatarRule: data.get(#avatarRule, or: $value.avatarRule),
      contentRule: data.get(#contentRule, or: $value.contentRule),
      postTimeRule: data.get(#postTimeRule, or: $value.postTimeRule),
      reviewQuoteUrl: data.get(#reviewQuoteUrl, or: $value.reviewQuoteUrl),
      voteUpUrl: data.get(#voteUpUrl, or: $value.voteUpUrl),
      voteDownUrl: data.get(#voteDownUrl, or: $value.voteDownUrl),
      postReviewUrl: data.get(#postReviewUrl, or: $value.postReviewUrl),
      postQuoteUrl: data.get(#postQuoteUrl, or: $value.postQuoteUrl),
      deleteUrl: data.get(#deleteUrl, or: $value.deleteUrl));

  @override
  ReviewRuleCopyWith<$R2, ReviewRule, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReviewRuleCopyWithImpl($value, $cast, t);
}
