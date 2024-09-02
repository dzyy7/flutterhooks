import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutterhooks/listBangunDatar.dart';  // Path sesuai dengan lokasi file Anda
import 'package:flutterhooks/BangunDatar.dart';     // Path sesuai dengan lokasi file Anda

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const listbangun(),
        ),
        GoRoute(
          path: '/bangun/:nama',
          builder: (context, state) {
            final bangunDatar = state.pathParameters['nama']!;
            return BangunDatar(nama: bangunDatar);
          },
        ),
      ],
    );

    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
