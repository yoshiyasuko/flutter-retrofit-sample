import 'package:dio/dio.dart';
import 'package:flutter_retrofit_sample/domain/client/api_client.dart';
import 'package:flutter_retrofit_sample/domain/entity/article.dart';
import 'package:flutter_retrofit_sample/domain/repository/article_repository.dart';

class ArticleRepositoryImpl with ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<List<Article>> fetchArticles() {
    return _client.fetchArticles();
  }
}
