import 'package:equatable/equatable.dart';

class AppFailure extends Equatable {
  final String message;

  const AppFailure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends AppFailure {
  const ServerFailure() : super('Server error occurred');
}
