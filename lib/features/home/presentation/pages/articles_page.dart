import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/theme/app_colors.dart';
import 'package:shop_me/core/theme/app_text_style.dart';
import 'package:auto_route/auto_route.dart';
import 'package:shop_me/features/home/domain/usecases/articles_use_case.dart';
import 'package:shop_me/features/home/presentation/bloc/articles/articles_bloc.dart';
import 'package:shop_me/features/home/presentation/bloc/articles/articles_event.dart';
import 'package:shop_me/features/home/presentation/bloc/articles/articles_state.dart';

@RoutePage()
class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              ArticlesBloc(getIt<ArticlesUseCase>())..add(LoadArticles()),
      child: Scaffold(
        backgroundColor: AppColors.surface.primary,
        body: BlocBuilder<ArticlesBloc, ArticlesState>(
          builder: (context, state) {
            if (state is ArticlesLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is ArticlesLoaded) {
              return ListView.builder(
                itemCount: state.articles.length,
                itemBuilder: (context, index) {
                  final article = state.articles[index];
                  return ListTile(
                    title: Text(
                      article.title,
                      style: AppTextStyles.body.medium,
                    ),
                    subtitle: Text(
                      article.abstract,
                      style: AppTextStyles.body.small.copyWith(
                        color: AppColors.text.secondary,
                      ),
                    ),
                  );
                },
              );
            } else if (state is ArticlesError) {
              return Center(
                child: Text(
                  state.failure.message,
                  style: AppTextStyles.body.medium,
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
