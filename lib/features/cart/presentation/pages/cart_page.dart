import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_me/core/theme/app_colors.dart';
import 'package:shop_me/core/theme/app_text_style.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_event.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_state.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface.primary,
      appBar: AppBar(
        backgroundColor: AppColors.surface.primary,
        title: Text('Cart'.toUpperCase(), style: AppTextStyles.label.large),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: AppColors.icon.active),
        actions: [
          GestureDetector(
            onTap: (){
              context.read<CartBloc>().add(ClearCart());
            },
            child: Text('CLEAR CART', style: AppTextStyles.label.medium),
          ),
        ],
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          switch (state) {
            case CartStateLoaded():
              return cartListWidget(state.cartItems);
          }
        },
      ),
    );
  }

  Widget cartListWidget(Map<ProductDetailsEntity, int> products) {
    if (products.isEmpty) {
      return Center(
        child: Text('No products', style: AppTextStyles.body.medium),
      );
    }
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            products.entries.elementAt(index).key.title,
            style: AppTextStyles.body.large,
          ),
          subtitle: Text(
            'Quantity: ${products.entries.elementAt(index).value}',
            style: AppTextStyles.body.small.copyWith(
              color: AppColors.text.secondary,
            ),
          ),
        );
      },
    );
  }
}
