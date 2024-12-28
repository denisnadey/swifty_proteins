import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:swifty_proteins/features/auth/presentation/widgets/register_widget.dart';

@RoutePage()
class RegisterRoute extends StatelessWidget {
  const RegisterRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterWidget();
  }
}
