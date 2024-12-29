import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:swifty_proteins/core/navigation/app_router.gr.dart';
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart';
import 'package:swifty_proteins/features/auth/presentation/widgets/auth_widget.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Swifty Proteins app',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const RegisterRoute());
                },
                child: const Text('Register'),
              ),
              const SizedBox(height: 20),
              Text('or', style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).push(const AuthRoute());
                },
                child: const Text('Auth'),
              ),
              Gap(16),
              Column(
                children: [
                  Text(
                    'Login by biometric:',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.start,
                  ),
                  Gap(8),
                  BlocBuilder<AuthCubit, AuthState>(
                    builder: (context, state) {
                      if (context.read<AuthCubit>().isBiometricEnabled) {
                        return ElevatedButton(
                          onPressed: () {
                            context.read<AuthCubit>().authenticate();
                          },
                          child: const Text('Login by biometric'),
                        );
                      }
                      return Text(
                          'Biometric is not activated or not available');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().deleteUserData();
                },
                child: const Text('delete user data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
