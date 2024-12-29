import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:swifty_proteins/core/di/di.dart';
import 'package:swifty_proteins/core/navigation/app_router.dart';
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart';
// Для выбора файла

class LigandApp extends StatelessWidget {
  const LigandApp({super.key});

  AppRouter get _appRouter => locator.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
            create: (context) => locator<AuthCubit>(
              param1: _appRouter,
            ),
          ),
          // Добавь другие кубиты или блоки, если потребуется
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ));
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  runApp(OverlaySupport.global(child: LigandApp()));
}
