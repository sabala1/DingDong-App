import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dingdong_app/models/models.dart';
import 'package:equatable/equatable.dart';

import 'package:dingdong_app/views/screens/swipe/swipe_event.dart';
import 'package:dingdong_app/views/screens/swipe/swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoding());

  Stream<SwipeState> mapEventToState(
    SwipeEvent event,
  ) async* {
    if (event is LoadUsersEvent) {
      yield* _mapLoadUsersToState(event);
    }
    if (event is SwipeLeftEvent) {
      yield* _mapSwipeLeftToState(event, state);
    }
    if (event is SwipeRightEvent) {
      yield* _mapSwipeRigthToState(event, state);
    }
  }

  Stream<SwipeState> _mapLoadUsersToState(
    LoadUsersEvent event,
  ) async* {
    yield SwipeLoded(users: event.users);
  }

  Stream<SwipeState> _mapSwipeLeftToState(
    SwipeLeftEvent event,
    SwipeState state,
  )async*{
    if(state is SwipeLoded) {
      try{
        yield SwipeLoded(users: List.from(state.users)..remove(event.user));
      }catch (_){}
    }
  }

  Stream<SwipeState> _mapSwipeRigthToState(
    SwipeRightEvent event,
    SwipeState state,
  )async*{
    if(state is SwipeLoded) {
      try{
        yield SwipeLoded(users: List.from(state.users)..remove(event.user));
      }catch (_){}
    }
  }
}
