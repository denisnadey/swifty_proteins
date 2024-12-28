import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:swifty_proteins/features/auth/data/auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthService authService;

  AuthCubit(this.authService) : super(const AuthState.initial());

  Future<void> register(String username, String password) async {
    emit(const AuthState.loading());
    try {
      await authService.saveUser(username, password);
      emit(const AuthState.registered());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> login(String username, String password) async {
    emit(const AuthState.loading());
    try {
      final success = await authService.login(username, password);
      if (success) {
        emit(const AuthState.loggedIn());
      } else {
        emit(const AuthState.error('Invalid credentials'));
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
