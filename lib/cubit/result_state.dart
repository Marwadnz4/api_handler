import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_apis/network_exceptions.dart';
import 'package:youtube_apis/models/user.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = Idle<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.success(T data) = Success<T>;

  const factory ResultState.failure(NetworkExceptions networkExceptions) = Failure<T>;
}

abstract class AppState {}

class InitState extends AppState {}
class LoadingState extends AppState {}
class SuccessState extends AppState {
  final User user;

  SuccessState(this.user);
}

class FailureState extends AppState {
  final String exceptions;

  FailureState(this.exceptions);
}
