// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:swifty_proteins/core/navigation/app_router.dart' as _i775;
import 'package:swifty_proteins/features/auth/data/auth_service.dart' as _i94;
import 'package:swifty_proteins/features/auth/data/biometric_auth.dart'
    as _i203;
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart'
    as _i712;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i775.AppRouter>(() => _i775.AppRouter());
    gh.lazySingleton<_i94.AuthService>(() => _i94.AuthService());
    gh.lazySingleton<_i203.BiometricAuth>(() => _i203.BiometricAuth());
    gh.factory<_i712.AuthCubit>(() => _i712.AuthCubit(
          gh<_i94.AuthService>(),
          appRouter: gh<_i775.AppRouter>(),
        ));
    return this;
  }
}
