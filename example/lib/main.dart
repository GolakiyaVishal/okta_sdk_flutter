import 'package:flutter/material.dart';
import 'package:okta_sdk_flutter_example/providers/OktaProvider.dart';
import 'package:okta_sdk_flutter_example/screens/LoginScreen.dart';
import 'package:okta_sdk_flutter_example/screens/MainScreen.dart';
import 'package:okta_sdk_flutter_example/screens/SplashScreen.dart';
import 'package:okta_sdk_flutter_example/screens/LandingScreen.dart';
import 'package:okta_sdk_flutter_example/services/AuthService.dart';


void main() => runApp((const MyApp()));

class MyApp extends StatelessWidget {

  static const appBarColor = Colors.blue;

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      authService: AuthOktaService(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
        routes: {
          SplashScreen.routeName: (ctx) => SplashScreen(),
          MainScreen.routeName: (ctx) => MainScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          LandingScreen.routeName: (ctx) => LandingScreen(),
        },
      ),
    );
  }
}