import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/theme/app_colors.dart';
import 'package:shop_me/core/theme/app_spacing.dart';
import 'package:shop_me/core/theme/app_text_style.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';
import 'package:shop_me/features/product_details/presentation/bloc/product_detail_bloc.dart';
import 'package:shop_me/features/product_details/presentation/bloc/product_detail_event.dart';
import 'package:shop_me/features/product_details/presentation/bloc/product_detail_state.dart';
import 'package:shop_me/shared/extentions/num_extentions.dart';

@RoutePage()
class ProductDetailsPage extends StatefulWidget {
  final int productId;
  const ProductDetailsPage({super.key, @PathParam() required this.productId});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              getIt<ProductDetailBloc>()
                ..add(LoadProductDetails(productId: widget.productId)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.surface.primary,
          appBar: AppBar(
            backgroundColor: AppColors.surface.primary,
            title: Text(
              'Product Details'.toUpperCase(),
              style: AppTextStyles.label.large,
            ),
            titleSpacing: 0,
            iconTheme: IconThemeData(color: AppColors.icon.active),
          ),
          body: BlocBuilder<ProductDetailBloc, ProductDetailsState>(
            builder: (context, state) {
              switch (state) {
                case ProductDetailsLoading():
                  return Center(child: CircularProgressIndicator());
                case PrductDetailsLoaded():
                  return getProductDetailsWidget(state.productDetailsEntity);
                case ProducDetailsFailure():
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

  Widget getProductDetailsWidget(final ProductDetailsEntity product) {
    return Column(
      children: [
        Image.network(product.images.first),
        AppSpacing.lg.hGap,
        ListTile(
          title: Text(product.title, style: AppTextStyles.body.medium),
          subtitle: Text(
            product.description,
            style: AppTextStyles.body.small.copyWith(),
          ),
        ),
      ],
    );
  }
}
