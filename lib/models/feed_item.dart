class FeedItem {
  FeedItem(
      {required this.score,
      required this.title,
      this.url,
      required this.author});

  final int score;
  final String title;
  final String? url;
  final String author;

  @override
  String toString() =>
      '${this.author}: ${this.title}(${this.score}⭐️), ${this.url ?? 'no-url'}';
}
