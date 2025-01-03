import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class BiometricAuth {
  final LocalAuthentication _auth = LocalAuthentication();

  static const _biometricKey = 'biometric_enabled';

  ///
  Future<void> saveBiometricPreference(bool isEnabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_biometricKey, isEnabled);
  }

  /// ,
  Future<bool> isBiometricEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_biometricKey) ?? false;
  }

  Future<void> activateBiometric() async {
    await saveBiometricPreference(true);
  }

  Future<void> deactivate() async {
    await saveBiometricPreference(false);
  }

  Future<bool> authenticate() async {
    try {
      return await _auth.authenticate(
        localizedReason: 'Please authenticate to access the app',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }

  Future<bool> canCheckBiometrics() async {
    return await _auth.canCheckBiometrics;
  }
}
