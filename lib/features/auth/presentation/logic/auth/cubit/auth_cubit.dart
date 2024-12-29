import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:swifty_proteins/core/navigation/app_router.dart';
import 'package:swifty_proteins/core/navigation/app_router.gr.dart';
import 'package:swifty_proteins/features/auth/data/auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthService authService;
  final AppRouter appRouter;

  AuthCubit(
    this.authService, {
    @pathParam required this.appRouter,
  }) : super(const AuthState.initial());

  Future<void> register(String username, String password) async {
    emit(const AuthState.loading());
    try {
      await authService.saveUser(username, password);

      showSimpleNotification(
        Text(
          'success',
          style: TextStyle(color: Colors.white), // Текст белый
        ),
        background: Colors.green, // Фон зеленый
      );

      appRouter.push(const AuthRoute());
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
        showSimpleNotification(
          Text(
            'success',
            style: TextStyle(color: Colors.white), // Текст белый
          ),
          background: Colors.green, // Фон зеленый
        );
        appRouter.push(const HomeRoute());

        emit(const AuthState.loggedIn());
      } else {
        showSimpleNotification(
          Text(
            'Invalid credentials',
            style: TextStyle(color: Colors.white), // Текст белый
          ),
          background: Colors.red, // Фон красный
        );
        emit(const AuthState.error('Invalid credentials'));
      }
    } catch (e) {
      showSimpleNotification(
        Text(
          e.toString(),
          style: TextStyle(color: Colors.white), // Текст белый
        ),
        background: Colors.red, // Фон красный
      );
      emit(AuthState.error(e.toString()));
    }
  }
}
