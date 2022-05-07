
part of 'swipe_bloc.dart';


abstract class SwipeEvent extends Equatable{
  const SwipeEvent();

  @override
  List<Object?> get props => [];
}

class LoadUsersEvent{
  final List <User> users;

  LoadUsersEvent ({required this.users})

  @override
  List<Object?> get props => [users];

}

class SwipeLeftEvent{
  final User user;

  SwipeLeftEvent ({required this.user})

  @override
  List<Object?> get props => [user];
}

class SwipeRightEvent {
  final User user;

  SwipeRightEvent ({required this.user})

  @override
  List<Object?> get props => [user];
}
