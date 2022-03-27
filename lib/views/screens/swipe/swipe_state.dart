import 'package:dingdong_app/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class SwipeState extends Equatable {
  const SwipeState();

  @override
  List<Object> get props => [];
}

class SwipeLoding extends SwipeState {}

class SwipeLoded extends SwipeState {
  final List<User> users;
  const SwipeLoded({
    required this.users
  });
  @override
  List<Object> get props => [users];
}

class SwipeError extends SwipeState {}
