import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class ServerFailure extends Failure {
  final String? stackTrace;

  ServerFailure({this.stackTrace});

  @override
  List<Object?> get props => [stackTrace];
}
