class FeedItem {
  String by;
  int id;
  int score;
  int time;
  String title;
  String type;
  String? url;

  FeedItem(
      {required this.by,
      required this.id,
      required this.score,
      required this.time,
      required this.title,
      required this.type,
      this.url});

  FeedItem.fromJson(Map<String, dynamic> json)
      : by = json['by'],
        id = json['id'],
        score = json['score'],
        time = json['time'],
        title = json['title'],
        type = json['type'],
        url = json['url'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['by'] = this.by;
    data['id'] = this.id;
    data['score'] = this.score;
    data['time'] = this.time;
    data['title'] = this.title;
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}
