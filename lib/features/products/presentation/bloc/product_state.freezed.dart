// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState()';
}


}

/// @nodoc
class $ProductStateCopyWith<$Res>  {
$ProductStateCopyWith(ProductState _, $Res Function(ProductState) __);
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductsLoading value)?  loading,TResult Function( ProductsLoaded value)?  loaded,TResult Function( ProductsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductsLoading() when loading != null:
return loading(_that);case ProductsLoaded() when loaded != null:
return loaded(_that);case ProductsFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductsLoading value)  loading,required TResult Function( ProductsLoaded value)  loaded,required TResult Function( ProductsFailure value)  failure,}){
final _that = this;
switch (_that) {
case ProductsLoading():
return loading(_that);case ProductsLoaded():
return loaded(_that);case ProductsFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductsLoading value)?  loading,TResult? Function( ProductsLoaded value)?  loaded,TResult? Function( ProductsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ProductsLoading() when loading != null:
return loading(_that);case ProductsLoaded() when loaded != null:
return loaded(_that);case ProductsFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<ProductEntity> products)?  loaded,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductsLoading() when loading != null:
return loading();case ProductsLoaded() when loaded != null:
return loaded(_that.products);case ProductsFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<ProductEntity> products)  loaded,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case ProductsLoading():
return loading();case ProductsLoaded():
return loaded(_that.products);case ProductsFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<ProductEntity> products)?  loaded,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case ProductsLoading() when loading != null:
return loading();case ProductsLoaded() when loaded != null:
return loaded(_that.products);case ProductsFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProductsLoading implements ProductState {
   ProductsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductState.loading()';
}


}




/// @nodoc


class ProductsLoaded implements ProductState {
   ProductsLoaded(final  List<ProductEntity> products): _products = products;
  

 final  List<ProductEntity> _products;
 List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadedCopyWith<ProductsLoaded> get copyWith => _$ProductsLoadedCopyWithImpl<ProductsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoaded&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductState.loaded(products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadedCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductsLoadedCopyWith(ProductsLoaded value, $Res Function(ProductsLoaded) _then) = _$ProductsLoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> products
});




}
/// @nodoc
class _$ProductsLoadedCopyWithImpl<$Res>
    implements $ProductsLoadedCopyWith<$Res> {
  _$ProductsLoadedCopyWithImpl(this._self, this._then);

  final ProductsLoaded _self;
  final $Res Function(ProductsLoaded) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(ProductsLoaded(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}


}

/// @nodoc


class ProductsFailure implements ProductState {
   ProductsFailure(this.message);
  

 final  String message;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsFailureCopyWith<ProductsFailure> get copyWith => _$ProductsFailureCopyWithImpl<ProductsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductsFailureCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory $ProductsFailureCopyWith(ProductsFailure value, $Res Function(ProductsFailure) _then) = _$ProductsFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProductsFailureCopyWithImpl<$Res>
    implements $ProductsFailureCopyWith<$Res> {
  _$ProductsFailureCopyWithImpl(this._self, this._then);

  final ProductsFailure _self;
  final $Res Function(ProductsFailure) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProductsFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
