import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:swifty_proteins/core/navigation/app_router.dart';
import 'package:swifty_proteins/core/navigation/app_router.gr.dart';
import 'package:swifty_proteins/features/auth/data/auth_service.dart';
import 'package:swifty_proteins/features/auth/data/biometric_auth.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final AuthService authService;
  final BiometricAuth biometricAuth;
  final AppRouter appRouter;

  AuthCubit(
    this.authService,
    this.biometricAuth, {
    @pathParam required this.appRouter,
  }) : super(const AuthState.initial());

  bool isBiometricEnabled = false;

  Future<void> init() async {
    isBiometricEnabled = await biometricAuth.isBiometricEnabled();
  }

  Future<void> activateBiometric() async {
    await biometricAuth.activateBiometric();
    isBiometricEnabled = true;
  }

  Future<void> deleteUserData() async {
    await authService.deleteUser();
    await biometricAuth.deactivate();
    isBiometricEnabled = false;
    appRouter.push(const MainRoute());

    showSimpleNotification(
      Text(
        'user data deleted',
        style: TextStyle(color: Colors.white), // Текст белый
      ),
      background: Colors.green, // Фон зеленый
    );
  }

  Future<void> authenticate() async {
    final canCheckBiometrics = await biometricAuth.canCheckBiometrics();
    if (!canCheckBiometrics) {
      showSimpleNotification(
        Text(
          'Biometrics are not available, please register and activate biometrics',
          style: TextStyle(
            color: Colors.white,
          ), // Текст белый
        ),
        background: Colors.red, // Фон зеленый
      );

      emit(const AuthState.error('Biometrics are not available'));
      return;
    }

    emit(const AuthState.loading());
    try {
      final success = await biometricAuth.authenticate();
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
        emit(const AuthState.initial());
      }
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> register(
      String username, String password, bool loginByBiometric) async {
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

      if (loginByBiometric) {
        await biometricAuth.activateBiometric();
        isBiometricEnabled = true;
      }

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
