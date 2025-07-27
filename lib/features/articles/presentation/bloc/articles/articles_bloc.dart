import 'package:injectable/injectable.dart';
import 'package:shop_me/features/articles/domain/usecases/articles_use_case.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_event.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_state.dart';
import 'package:bloc/bloc.dart';

@Injectable()
class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesUseCase articlesUseCase;
  ArticlesBloc(this.articlesUseCase) : super(ArticlesLoading()) {
    on<LoadArticles>(_onLoadArticles);
  }

  Future<void> _onLoadArticles(
    LoadArticles event,
    Emitter<ArticlesState> emit,
  ) async {
    final either = await articlesUseCase.call();
    either.when(
      error: (failure) {
        emit(ArticlesError(failure));
      },
      success: (articles) {
        emit(ArticlesLoaded(articles));
      },
    );
  }
}
