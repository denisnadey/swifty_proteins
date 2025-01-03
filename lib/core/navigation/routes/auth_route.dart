import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:swifty_proteins/features/auth/presentation/widgets/auth_widget.dart';

@RoutePage()
class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthWidget();
  }
}
