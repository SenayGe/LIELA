part of 'swipe_bloc.dart';



import 'package:equatable/equatable.dart';

abstract class SwipeState extends Equatable{
  const SwipeState();

  @override
  List<Object?> get props => [];


}

class SwipeLoading extends SwipeState{

}