import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bibek extends StatelessWidget {
  const Bibek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to navigate'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context.push('/bibek');
                },
                child: Text('press here')),
          ],
        ),
      ),
    );
  }
}
