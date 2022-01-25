import 'dart:io';

class FeedModel {
  String? title;
  String? description;
  File? image;
  bool isFav;
  bool isLiked;

  FeedModel(
      {this.title,
      this.description,
      this.image,
      this.isFav = false,
      this.isLiked = false});
}
