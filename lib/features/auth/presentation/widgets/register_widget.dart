import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swifty_proteins/features/auth/presentation/logic/auth/cubit/auth_cubit.dart';

class RegisterWidget extends StatefulWidget {
  RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  bool isBiometricEnabled = false;

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
            Row(
              children: [
                Switch(
                    value: isBiometricEnabled,
                    onChanged: (value) {
                      setState(() {
                        isBiometricEnabled = value;
                      });
                    }),
                const SizedBox(width: 20),
                const Text('Enable biometric'),
              ],
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
                            isBiometricEnabled,
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
