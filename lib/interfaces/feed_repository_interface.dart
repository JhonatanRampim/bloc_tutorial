import 'package:bloc_tutorial/models/feed_item.dart';

abstract class IFeedRepository {
  Future<List<int>> getNewestItems();
  Future<List<int>> getTopItems();
  Future<FeedItem> getItem(int idPost);
}
