import 'package:dio/dio.dart';
import 'package:flutter_retrofit_sample/domain/client/api_client.dart';
import 'package:flutter_retrofit_sample/domain/entity/article.dart';
import 'package:flutter_retrofit_sample/domain/repository/article_repository.dart';
import 'package:flutter_retrofit_sample/domain/response/result.dart';

class ArticleRepositoryImpl with ArticleRepository {
  final ApiClient _client;

  ArticleRepositoryImpl([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  @override
  Future<Result<List<Article>>> fetchArticles() async {
    return await _client
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}
