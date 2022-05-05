import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:liela/models/models.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState>{
  SwipeBloc(): super(SwipeLoading());

  @override
  Stream<SwipeState> mapEventsTosState{

}
}