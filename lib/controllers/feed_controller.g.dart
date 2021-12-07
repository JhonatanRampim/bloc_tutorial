// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedControllerBase, Store {
  final _$listFeedAtom = Atom(name: '_FeedControllerBase.listFeed');

  @override
  ObservableList<FeedItem>? get listFeed {
    _$listFeedAtom.reportRead();
    return super.listFeed;
  }

  @override
  set listFeed(ObservableList<FeedItem>? value) {
    _$listFeedAtom.reportWrite(value, super.listFeed, () {
      super.listFeed = value;
    });
  }

  final _$getTopItemsAsyncAction =
      AsyncAction('_FeedControllerBase.getTopItems');

  @override
  Future getTopItems() {
    return _$getTopItemsAsyncAction.run(() => super.getTopItems());
  }

  @override
  String toString() {
    return '''
listFeed: ${listFeed}
    ''';
  }
}
