import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart';

class AuthWidget extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  AuthWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
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
                      loading: null,
                      orElse: () => () {
                            context.read<AuthCubit>().login(
                                  _usernameController.text,
                                  _passwordController.text,
                                );
                          }),
                  child: state.maybeMap(
                    loading: (_) => const CircularProgressIndicator(),
                    orElse: () => const Text('Auth'),
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
