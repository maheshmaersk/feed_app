import 'package:feed_app/model/data_model/feed_model.dart';
import 'package:flutter/material.dart';

class FeedViewModel extends ChangeNotifier {
  List<FeedModel> _feeds = [];

  List<FeedModel> get feeds => _feeds;

  void addPost(FeedModel model) {
    _feeds.add(model);
    notifyListeners();
  }

  void likePost(bool liked, int index) {
    _feeds[index].isLiked = liked;
    notifyListeners();
  }

  void favourite(bool liked, int index) {
    _feeds[index].isFav = liked;
    notifyListeners();
  }
}
