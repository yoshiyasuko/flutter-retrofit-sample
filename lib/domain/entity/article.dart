import 'package:flutter_retrofit_sample/domain/entity/user.dart';

class Article {
  String id;
  String title;
  String url;
  User user;

  Article(
      {required this.id,
      required this.title,
      required this.url,
      required this.user});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        id: json['id'],
        title: json['title'],
        url: json['url'],
        user: User.fromJson(json['user']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map();
    data['id'] = this.id;
    data['title'] = this.title;
    data['url'] = this.url;
    data['user'] = this.user.toJson();
    return data;
  }
}
