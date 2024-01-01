import 'package:flutter/material.dart';

import 'presentation/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Center(
    //       child: Text(
    //         'Hello World!',
    //       ),
    //     ),
    //   ),
    //   theme: ThemeData(
    //     useMaterial3: true,
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   ),
    // );
  }
}
