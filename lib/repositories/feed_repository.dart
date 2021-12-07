import 'dart:async';
import 'dart:convert';
import 'package:bloc_tutorial/interfaces/feed_repository_interface.dart';
import 'package:bloc_tutorial/models/feed_item.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';

enum Type { newest, top }

extension on Type {
  Uri get uri {
    switch (this) {
      case Type.newest:
        return Uri.parse('${URL_API}/newstories.json');

      case Type.top:
        return Uri.parse('${URL_API}/topstories.json');
    }
  }
}

class FeedRespository implements IFeedRepository {
  @override
  Future<List<int>> getNewestItems() async {
    try {
      List<int> topItens = List.empty();
      final response = await http.get(Type.newest.uri);
      topItens = (jsonDecode(response.body) as List)
          .take(25)
          .map((e) => e as int)
          .toList();
      return topItens;
    } catch (error) {
      throw error;
    }
  }

  @override
  Future<List<int>> getTopItems() async {
    try {
      List<int> newestItens = List.empty();
      final response = await http.get(Type.top.uri);
      newestItens = (jsonDecode(response.body) as List)
          .take(25)
          .map((e) => e as int)
          .toList();
      return newestItens;
    } catch (error) {
      throw error;
    }
  }

  @override
  Future<FeedItem> getItem(int idPost) async {
    try {
      final response =
          await http.get(Uri.parse('${URL_API}/item/$idPost.json'));
      FeedItem feedItem = FeedItem.fromJson(jsonDecode(response.body));
      return feedItem;
    } catch (error, stacktrace) {
      print(error);
      print(stacktrace);
      throw error;
    }
  }
}
