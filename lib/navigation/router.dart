import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spool/navigation/home.dart';
import 'package:spool/stack.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Bibek();
      },
    ),
    GoRoute(
      path: '/bibekh',
      builder: (context, state) {
        return Laad();
      },
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: Center(child: Text('hsshj'))),
    );
  },
);
