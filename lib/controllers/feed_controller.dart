import 'package:bloc_tutorial/models/feed_item.dart';
import 'package:bloc_tutorial/repositories/feed_repository.dart';
import 'package:mobx/mobx.dart';
part 'feed_controller.g.dart';

class FeedController = _FeedControllerBase with _$FeedController;

abstract class _FeedControllerBase with Store {
  FeedRespository? _feedRespository;
  _FeedControllerBase() {
    _feedRespository = FeedRespository();
  }

  @observable
  ObservableList<FeedItem>? listFeed;

  @action
  getTopItems() async {
    List<int> itemsIds = await _feedRespository!.getTopItems();
    List<FeedItem> listOfItems = List.empty();
    listOfItems =
        await Future.wait(itemsIds.map(_feedRespository!.getItem).toList());
    listFeed = ObservableList<FeedItem>.of(listOfItems);
  }
}
