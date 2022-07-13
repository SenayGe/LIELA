part of 'auth_bloc.dart';

enum AuthStatus { UNKNOWN, AUTHENTICATED, UNAUTHENTICATED }

class AuthState extends Equatable {
  final AuthStatus status;
  final auth.User? user;

  const AuthState._({this.status = AuthStatus.UNKNOWN, this.user});

  const AuthState.unknown() : this._();

  const AuthState.authenticated({required auth.User user})
      : this._(
          status: AuthStatus.AUTHENTICATED,
          user: user,
        );

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.UNAUTHENTICATED);

  @override
  List<Object?> get props => [status, user];
}

//class AuthInitial extends AuthState {}
