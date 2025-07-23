import 'package:equatable/equatable.dart';

class AppFailure extends Equatable {
  final String message;

  const AppFailure(this.message);

  @override
  List<Object> get props => [message];
}
