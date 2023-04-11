import 'package:equatable/equatable.dart';

abstract class AppException extends Equatable implements Exception {
  final String? code;
  final String? message;
  final dynamic details;

  const AppException({
    this.code,
    this.message,
    this.details,
  });

  @override
  List<Object?> get props => [];
}
