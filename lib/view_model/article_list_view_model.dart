import 'package:flutter/widgets.dart';
import 'package:flutter_retrofit_sample/domain/entity/article.dart';
import 'package:flutter_retrofit_sample/domain/repository/article_repository.dart';
import 'package:flutter_retrofit_sample/domain/repository/article_repository_impl.dart';

class ArticleListViewModel with ChangeNotifier {
  final ArticleRepository repository = ArticleRepositoryImpl();
  late List<Article> articles;

  ArticleListViewModel() {
    this.articles = [];
    fetchArticles();
  }

  void fetchArticles() async {
    await repository.fetchArticles().then((result) {
      result.when(success: (articles) {
        this.articles = articles;
        notifyListeners();
      }, failure: (error) {
        print(error.getErrorMessage());
      });
    });
  }
}
