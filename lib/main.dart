import 'package:flutter/material.dart';
import 'package:football_app/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Football App',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
