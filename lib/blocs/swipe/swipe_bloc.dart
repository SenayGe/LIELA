import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:liela/models/models.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState>{
  SwipeBloc(): super(SwipeLoading()){
    on<LoadUsersEvent>(_onLoadUsers);
    on<SwipeLeftEvent>(_onSwipeLeft);
    on<SwipeRightEvent>(_onSwipeRight);

    //on<Decrement>(_onDecrement);

  }

  // @override
  // Stream<SwipeState> mapEventsTosState (SwipeEvent event) async* {
  //   if (event is LoadUsersEvent){
  //     print ("check hereeeeeee");
  //     yield* _mapLoadUsersToState(event);
  //   }
  //   if (event is SwipeLeftEvent){
  //     yield* _mapSwipeLeftToState(event, state);
  //   }
  //   if (event is SwipeRightEvent){
  //     yield* _mapSwipeRightToState(event, state);
  //   }


  void _onLoadUsers (LoadUsersEvent event, Emitter<SwipeState> emit) {
    emit(SwipeLoaded(users: event.users));
  }
  void _onSwipeLeft (SwipeLeftEvent event,  Emitter<SwipeState> emit) {
    if (state is SwipeLoaded){
        try{
          //TODO : implement function
          emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
      }
      catch(_){}
      }
    // if (state is SwipeLoaded){
    //   try{
    //     //TODO : implement function
    //     emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
    // }
    // catch(_){}
    // }

  }

  void _onSwipeRight (SwipeRightEvent event,  Emitter<SwipeState> emit) {
    emit(SwipeLoaded(users: List.from(state.users)..remove(event.user)));
  }
  Stream<SwipeState> _mapLoadUsersToState (LoadUsersEvent event) async* {
      yield SwipeLoaded(users: event.users);
  }
  Stream<SwipeState> _mapSwipeLeftToState (SwipeLeftEvent event, SwipeState state) async* {
    if (state is SwipeLoaded){
      try{
        //TODO : implement function
        yield SwipeLoaded(users: List.from(state.users)..remove(event.user));
      }
      catch(_){}
    }
  }
  Stream<SwipeState> _mapSwipeRightToState (SwipeRightEvent event, SwipeState state) async* {
    //TODO: implement
    if (state is SwipeLoaded){
      try{
        //TODO : implement function
        yield SwipeLoaded(users: List.from(state.users)..remove(event.user));
      }
      catch(_){}
    }
  }
}