import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/theme_data.dart';
import 'presentation/main/cubit/bottom_nav_cubit.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';
import 'presentation/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavCubit()),
        BlocProvider(create: (_) => MallTypeCubit()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: CustomThemeData.themeData,
      ),
    );
  }
}
