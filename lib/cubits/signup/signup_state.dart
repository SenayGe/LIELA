
part of 'signup_cubit.dart';

enum SignupStatus {INITIAL, SUBMITTING, SUCCESS, ERROR};

class SignupState extends Equatable {
  final String email;
  final String password;
  final SignupStatus status;

  const SignupState ({required this.email, required this.password, required this.status});

  factory SignupState.initial () {
    return SignupState(email: '', password: '', status: SignupStatus.INITIAL);
  }

  SignupState copyWith ({String? email, String? password, SignupStatus? status}){
    return SignupState(email: email ?? this.email, password: password ?? this.password, status: status ?? this.status);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [email, password, status];

}