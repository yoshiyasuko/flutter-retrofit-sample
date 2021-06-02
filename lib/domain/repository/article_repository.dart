import 'package:flutter_retrofit_sample/domain/entity/article.dart';
import 'package:flutter_retrofit_sample/domain/response/result.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}
