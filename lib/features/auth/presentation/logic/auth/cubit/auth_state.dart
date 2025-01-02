part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({@Default(false) bool isBiometricEnabled}) =
      _Initial;
  const factory AuthState.loading({@Default(false) bool isBiometricEnabled}) =
      _Loading;
  const factory AuthState.registered(
      {@Default(false) bool isBiometricEnabled}) = _Registered;
  const factory AuthState.loggedIn({@Default(false) bool isBiometricEnabled}) =
      _LoggedIn;
  const factory AuthState.error(String message,
      {@Default(false) bool isBiometricEnabled}) = _Error;
}
