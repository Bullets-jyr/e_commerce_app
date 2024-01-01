import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/routes_path.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('splash'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'splash_page',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () => context.push(RoutesPath.home),
              child: Text('go home'),
            ),
          ],
        ),
      ),
    );
  }
}
