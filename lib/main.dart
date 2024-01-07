import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/theme_data.dart';
import 'data/data_source/mock/display_mock_api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'presentation/main/cubit/bottom_nav_cubit.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';
import 'presentation/routes/routes.dart';

void main() async {
  // final data = await DisplayMockApi().getMenusByMallType('market');
  // print(data);

  final data = await DisplayRepositoryImpl(DisplayMockApi()).getMenusByMallType(mallType: MallType.market);
  print(data);

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
