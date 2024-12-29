import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart';

class RegisterWidget extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state.maybeMap(
                    orElse: () => () {
                      context.read<AuthCubit>().register(
                            _usernameController.text,
                            _passwordController.text,
                          );
                    },
                    loading: null,
                  ),
                  child: state.maybeMap(
                    loading: (_) => const CircularProgressIndicator(),
                    orElse: () => const Text('Register'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
