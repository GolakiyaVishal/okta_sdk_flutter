import 'package:flutter/material.dart';
import 'package:okta_sdk_flutter_example/services/AuthService.dart';

class AuthProvider extends InheritedWidget {
  final AuthOktaService authService;

  const AuthProvider({Key? key, required Widget child, required this.authService})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static AuthProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AuthProvider>();
}
