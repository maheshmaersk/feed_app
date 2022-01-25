class FeedModel {
  final String? title;
  final String? description;
  final String? imagePath;
  final bool isFav;
  final bool isLiked;

  FeedModel(
      {this.title,
      this.description,
      this.imagePath,
      this.isFav = false,
      this.isLiked = false});
}
