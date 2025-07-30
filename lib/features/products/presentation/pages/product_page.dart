import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/router/navigator_helper.dart';
import 'package:shop_me/core/theme/app_colors.dart';
import 'package:shop_me/core/theme/app_text_style.dart';
import 'package:shop_me/features/products/domain/entities/product_entity.dart';
import 'package:shop_me/features/products/presentation/bloc/product_bloc.dart';
import 'package:shop_me/features/products/presentation/bloc/product_event.dart';
import 'package:shop_me/features/products/presentation/bloc/product_state.dart';

@RoutePage()
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>()..add(LoadProducts()),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.surface.primary,
          body: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              switch (state) {
                case ProductsLoading():
                  return Center(child: CircularProgressIndicator());
                case ProductsLoaded():
                  return buildList(state.products);
                case ProductsFailure():
                  return Center(
                    child: Text(state.message, style: AppTextStyles.body.large),
                  );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildList(final List<ProductEntity> products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index].title, style: AppTextStyles.body.medium),
          subtitle: Text(
            products[index].description,
            style: AppTextStyles.body.small.copyWith(
              color: AppColors.text.secondary,
            ),
          ),
          onTap: () {
            getIt<NavigatorHelper>().goToProductDetailsPage(
              context,
              productId: products[index].id,
            );
          },
        );
      },
    );
  }
}
