import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
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
  }) : super(const AuthState.initial(
          isBiometricEnabled: false,
        ));

  Future<void> init() async {
    final isBiometricEnabled = await biometricAuth.isBiometricEnabled();
    emit(state.copyWith(isBiometricEnabled: isBiometricEnabled));
  }

  Future<void> activateBiometric() async {
    await biometricAuth.activateBiometric();

    emit(state.copyWith(isBiometricEnabled: true));
  }

  Future<void> deleteUserData() async {
    await authService.deleteUser();
    await biometricAuth.deactivate();

    emit(state.copyWith(isBiometricEnabled: false));
    appRouter.push(const MainRoute());

    showSimpleNotification(
      Text(
        'user data deleted',
        style: TextStyle(color: Colors.white), //
      ),
      background: Colors.green, //
    );
  }

  Future<void> authenticate() async {
    final canCheckBiometrics = await biometricAuth.canCheckBiometrics();
    if (!canCheckBiometrics) {
      showSimpleNotification(
        Text(
          'Biometrics are not available for this device or setup pin code or face id on your device',
          style: TextStyle(
            color: Colors.white,
          ), //
        ),
        background: Colors.red, //
      );

      emit(AuthState.error('Biometrics are not available',
          isBiometricEnabled: state.isBiometricEnabled));
      return;
    }

    emit(AuthState.loading(isBiometricEnabled: state.isBiometricEnabled));
    try {
      final success = await biometricAuth.authenticate();
      if (success) {
        showSimpleNotification(
          Text(
            'success',
            style: TextStyle(color: Colors.white), //
          ),
          background: Colors.green, //
        );
        appRouter.push(const HomeRoute());
        emit(AuthState.loggedIn(isBiometricEnabled: state.isBiometricEnabled));
      } else {
        emit(AuthState.initial(isBiometricEnabled: state.isBiometricEnabled));
      }
    } catch (e) {
      emit(AuthState.error(e.toString(),
          isBiometricEnabled: state.isBiometricEnabled));
    }
  }

  Future<void> register(
      String username, String password, bool loginByBiometric) async {
    emit(AuthState.loading(isBiometricEnabled: state.isBiometricEnabled));
    try {
      await authService.saveUser(username, password);

      showSimpleNotification(
        Text(
          'success',
          style: TextStyle(color: Colors.white), //
        ),
        background: Colors.green, //
      );

      if (loginByBiometric) {
        await biometricAuth.activateBiometric();
        emit(state.copyWith(isBiometricEnabled: true));
      }

      appRouter.push(const AuthRoute());
      emit(AuthState.registered(isBiometricEnabled: state.isBiometricEnabled));
    } catch (e) {
      emit(AuthState.error(e.toString(),
          isBiometricEnabled: state.isBiometricEnabled));
    }
  }

  Future<void> login(String username, String password) async {
    emit(AuthState.loading(isBiometricEnabled: state.isBiometricEnabled));
    try {
      final success = await authService.login(username, password);
      if (success) {
        showSimpleNotification(
          Text(
            'success',
            style: TextStyle(color: Colors.white), //
          ),
          background: Colors.green, //
        );
        appRouter.push(const HomeRoute());

        emit(AuthState.loggedIn(isBiometricEnabled: state.isBiometricEnabled));
      } else {
        showSimpleNotification(
          Text(
            'Invalid credentials',
            style: TextStyle(color: Colors.white), //
          ),
          background: Colors.red, //
        );
        emit(AuthState.error('Invalid credentials',
            isBiometricEnabled: state.isBiometricEnabled));
      }
    } catch (e) {
      showSimpleNotification(
        Text(
          e.toString(),
          style: TextStyle(color: Colors.white), //
        ),
        background: Colors.red, //
      );
      emit(AuthState.error(e.toString(),
          isBiometricEnabled: state.isBiometricEnabled));
    }
  }
}
