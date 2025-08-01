// import 'package:equatable/equatable.dart';

// abstract class Either<L, R> extends Equatable {
//   const Either();

//   T when<T>({
//     required T Function(L error) error,
//     required T Function(R success) success,
//   });

//   T? whenOrNull<T>({
//     T Function(L error)? error,
//     T Function(R success)? success,
//   });

//   T maybeWhen<T>({
//     required T Function() orElse,
//     T Function(L error)? error,
//     T Function(R success)? success,
//   });

//   T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn);
// }

// class Left<L, R> extends Either<L, R> {
//   final L value;

//   const Left(this.value);

//   @override
//   T when<T>({
//     required T Function(L error) error,
//     required T Function(R success) success,
//   }) {
//     return error(value);
//   }

//   @override
//   T? whenOrNull<T>({
//     T Function(L error)? error,
//     T Function(R success)? success,
//   }) {
//     return error?.call(value);
//   }

//   @override
//   T maybeWhen<T>({
//     required T Function() orElse,
//     T Function(L error)? error,
//     T Function(R success)? success,
//   }) {
//     if (error != null) {
//       return error(value);
//     }
//     return orElse();
//   }

//   @override
//   T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn) {
//     return leftFn(value);
//   }

//   @override
//   List<Object?> get props => [value];
// }

// class Right<L, R> extends Either<L, R> {
//   final R value;

//   const Right(this.value);

//   @override
//   T when<T>({
//     required T Function(L error) error,
//     required T Function(R success) success,
//   }) {
//     return success(value);
//   }

//   @override
//   T? whenOrNull<T>({
//     T Function(L error)? error,
//     T Function(R success)? success,
//   }) {
//     return success?.call(value);
//   }

//   @override
//   T maybeWhen<T>({
//     required T Function() orElse,
//     T Function(L error)? error,
//     T Function(R success)? success,
//   }) {
//     if (success != null) {
//       return success(value);
//     }
//     return orElse();
//   }

//   @override
//   T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn) {
//     return rightFn(value);
//   }

//   @override
//   List<Object?> get props => [value];
// }
