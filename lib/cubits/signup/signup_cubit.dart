import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liela/repositories/auth/auth_repository.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final AuthRepository _authRepository;

  SignupCubit({required authRepository})
      : this._authRepository = authRepository,
        super(SignupState.initial());

  void emailChanged(newEmail) {
    emit(state.copyWith(email: newEmail));
  }

  void passwordChanged(newPassword) {
    emit(state.copyWith(password: newPassword));
  }

  void signupWithCredential() async {
    if (state.isValid()) {
      try {
        await _authRepository.signUp(
            email: state.email, password: state.password);
        emit(state.copyWith(status: SignupStatus.SUCCESS));
      } catch (_) {}
    }
  }
}
