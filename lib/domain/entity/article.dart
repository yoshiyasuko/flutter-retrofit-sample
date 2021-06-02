import 'package:flutter_retrofit_sample/domain/entity/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.g.dart';

@JsonSerializable(explicitToJson: true)
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

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
