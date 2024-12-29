import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:swifty_proteins/core/di/di.dart';
import 'package:swifty_proteins/core/navigation/app_router.dart';
import 'package:swifty_proteins/core/theme/theme.dart';
import 'package:swifty_proteins/core/theme/util.dart';
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart';
// Для выбора файла

class LigandApp extends StatelessWidget {
  const LigandApp({super.key});

  AppRouter get _appRouter => locator.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");

    MaterialTheme theme = MaterialTheme(textTheme);

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
          theme: brightness == Brightness.light ? theme.light() : theme.dark(),
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
  if (!kDebugMode) {
    await Future.delayed(const Duration(seconds: 3)); // Задержка 3 секунды
  }

  runApp(OverlaySupport.global(child: LigandApp()));
}
