// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_source_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BookSourceStore on _BookSourceStore, Store {
  late final _$localBookSourceAtom =
      Atom(name: '_BookSourceStore.localBookSource', context: context);

  @override
  List<BookSource> get localBookSource {
    _$localBookSourceAtom.reportRead();
    return super.localBookSource;
  }

  @override
  set localBookSource(List<BookSource> value) {
    _$localBookSourceAtom.reportWrite(value, super.localBookSource, () {
      super.localBookSource = value;
    });
  }

  late final _$bookSourceAtom =
      Atom(name: '_BookSourceStore.bookSource', context: context);

  @override
  List<BookSource> get bookSource {
    _$bookSourceAtom.reportRead();
    return super.bookSource;
  }

  @override
  set bookSource(List<BookSource> value) {
    _$bookSourceAtom.reportWrite(value, super.bookSource, () {
      super.bookSource = value;
    });
  }

  late final _$parseUrlAsyncAction =
      AsyncAction('_BookSourceStore.parseUrl', context: context);

  @override
  Future parseUrl(String url, BuildContext context) {
    return _$parseUrlAsyncAction.run(() => super.parseUrl(url, context));
  }

  late final _$querySqlBookSourceAsyncAction =
      AsyncAction('_BookSourceStore.querySqlBookSource', context: context);

  @override
  Future querySqlBookSource() {
    return _$querySqlBookSourceAsyncAction
        .run(() => super.querySqlBookSource());
  }

  @override
  String toString() {
    return '''
localBookSource: ${localBookSource},
bookSource: ${bookSource}
    ''';
  }
}
