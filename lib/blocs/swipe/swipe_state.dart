part of 'swipe_bloc.dart';


abstract class SwipeState extends Equatable{
  // const SwipeState();
  List<User> users = [];
  SwipeState();
  @override
  List<Object?> get props => [];


}

class SwipeLoading extends SwipeState{}

class SwipeLoaded extends SwipeState{

  SwipeLoaded({required users}){
    super.users = users;
  }

  @override
  List<Object?> get props => [users];
}

class SwipeError extends SwipeState{ }