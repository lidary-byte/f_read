// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_shelf_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BookShelfStore on _BookShelfStore, Store {
  late final _$bookSourceAtom = Atom(
    name: '_BookShelfStore.bookSource',
    context: context,
  );

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

  late final _$parseUrlAsyncAction = AsyncAction(
    '_BookShelfStore.parseUrl',
    context: context,
  );

  @override
  Future parseUrl(String url, BuildContext context) {
    return _$parseUrlAsyncAction.run(() => super.parseUrl(url, context));
  }

  @override
  String toString() {
    return '''
bookSource: ${bookSource}
    ''';
  }
}
