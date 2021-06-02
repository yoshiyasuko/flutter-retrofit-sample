import 'package:dio/dio.dart';
import 'package:flutter_retrofit_sample/domain/client/api_client.dart';
import 'package:flutter_retrofit_sample/domain/entity/article.dart';

class ArticleRepository {
  final ApiClient _client;

  ArticleRepository([ApiClient? client]) : _client = client ?? ApiClient(Dio());

  Future<List<Article>> fetchArticles() {
    return _client.fetchArticles();
  }
}
