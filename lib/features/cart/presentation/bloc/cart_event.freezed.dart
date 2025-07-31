// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RemoveFromCart value)?  removeFromCart,TResult Function( AddToCart value)?  addToCart,TResult Function( ClearCart value)?  clearCart,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RemoveFromCart() when removeFromCart != null:
return removeFromCart(_that);case AddToCart() when addToCart != null:
return addToCart(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RemoveFromCart value)  removeFromCart,required TResult Function( AddToCart value)  addToCart,required TResult Function( ClearCart value)  clearCart,}){
final _that = this;
switch (_that) {
case RemoveFromCart():
return removeFromCart(_that);case AddToCart():
return addToCart(_that);case ClearCart():
return clearCart(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RemoveFromCart value)?  removeFromCart,TResult? Function( AddToCart value)?  addToCart,TResult? Function( ClearCart value)?  clearCart,}){
final _that = this;
switch (_that) {
case RemoveFromCart() when removeFromCart != null:
return removeFromCart(_that);case AddToCart() when addToCart != null:
return addToCart(_that);case ClearCart() when clearCart != null:
return clearCart(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProductDetailsEntity product)?  removeFromCart,TResult Function( ProductDetailsEntity product)?  addToCart,TResult Function()?  clearCart,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RemoveFromCart() when removeFromCart != null:
return removeFromCart(_that.product);case AddToCart() when addToCart != null:
return addToCart(_that.product);case ClearCart() when clearCart != null:
return clearCart();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProductDetailsEntity product)  removeFromCart,required TResult Function( ProductDetailsEntity product)  addToCart,required TResult Function()  clearCart,}) {final _that = this;
switch (_that) {
case RemoveFromCart():
return removeFromCart(_that.product);case AddToCart():
return addToCart(_that.product);case ClearCart():
return clearCart();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProductDetailsEntity product)?  removeFromCart,TResult? Function( ProductDetailsEntity product)?  addToCart,TResult? Function()?  clearCart,}) {final _that = this;
switch (_that) {
case RemoveFromCart() when removeFromCart != null:
return removeFromCart(_that.product);case AddToCart() when addToCart != null:
return addToCart(_that.product);case ClearCart() when clearCart != null:
return clearCart();case _:
  return null;

}
}

}

/// @nodoc


class RemoveFromCart implements CartEvent {
   RemoveFromCart(this.product);
  

 final  ProductDetailsEntity product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromCartCopyWith<RemoveFromCart> get copyWith => _$RemoveFromCartCopyWithImpl<RemoveFromCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromCart&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.removeFromCart(product: $product)';
}


}

/// @nodoc
abstract mixin class $RemoveFromCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $RemoveFromCartCopyWith(RemoveFromCart value, $Res Function(RemoveFromCart) _then) = _$RemoveFromCartCopyWithImpl;
@useResult
$Res call({
 ProductDetailsEntity product
});


$ProductDetailsEntityCopyWith<$Res> get product;

}
/// @nodoc
class _$RemoveFromCartCopyWithImpl<$Res>
    implements $RemoveFromCartCopyWith<$Res> {
  _$RemoveFromCartCopyWithImpl(this._self, this._then);

  final RemoveFromCart _self;
  final $Res Function(RemoveFromCart) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(RemoveFromCart(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetailsEntity,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsEntityCopyWith<$Res> get product {
  
  return $ProductDetailsEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class AddToCart implements CartEvent {
   AddToCart(this.product);
  

 final  ProductDetailsEntity product;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartCopyWith<AddToCart> get copyWith => _$AddToCartCopyWithImpl<AddToCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCart&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'CartEvent.addToCart(product: $product)';
}


}

/// @nodoc
abstract mixin class $AddToCartCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory $AddToCartCopyWith(AddToCart value, $Res Function(AddToCart) _then) = _$AddToCartCopyWithImpl;
@useResult
$Res call({
 ProductDetailsEntity product
});


$ProductDetailsEntityCopyWith<$Res> get product;

}
/// @nodoc
class _$AddToCartCopyWithImpl<$Res>
    implements $AddToCartCopyWith<$Res> {
  _$AddToCartCopyWithImpl(this._self, this._then);

  final AddToCart _self;
  final $Res Function(AddToCart) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(AddToCart(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDetailsEntity,
  ));
}

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDetailsEntityCopyWith<$Res> get product {
  
  return $ProductDetailsEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc


class ClearCart implements CartEvent {
   ClearCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartEvent.clearCart()';
}


}




// dart format on
