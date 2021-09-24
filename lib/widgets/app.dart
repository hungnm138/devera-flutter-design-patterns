import 'package:flutter/material.dart';

import '../navigation/router.dart';
import '../constants/themes.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Design Patterns',
      theme: lightTheme,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
