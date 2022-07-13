import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  StreamSubscription<auth.User?>? _userSubscription;

  AuthBloc({required AuthRepository authRepository})
      : this._authRepository = authRepository,
        super(AuthState.unknown()) {
    //on<AuthUserChanged>(_onLoadUsers);
    _userSubscription = _authRepository.user
        .listen((user) => add(AuthUserChanged(user: user!)));

    // Mapping event to state
    on<AuthUserChanged>(_onAuthUserChanged);
  }

  void _onAuthUserChanged (AuthUserChanged event, Emitter<AuthState> emit){
    emit(AuthState.authenticated(user: event.user));
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
