import 'package:flutter_retrofit_sample/domain/entity/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> fetchArticles();
}
