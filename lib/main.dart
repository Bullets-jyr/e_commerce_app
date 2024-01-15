import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/theme_data.dart';
import 'core/utils/constant.dart';
import 'core/utils/exception/common_exception.dart';
import 'core/utils/logger.dart';
import 'data/data_source/mock/display_mock_api.dart';
import 'data/repository_impl/display.repository_impl.dart';
import 'domain/usecase/display/display.usecase.dart';
import 'domain/usecase/menu/get_menus.usecase.dart';
import 'presentation/main/cubit/bottom_nav_cubit.dart';
import 'presentation/main/cubit/mall_type_cubit.dart';
import 'presentation/routes/routes.dart';
import 'service_locator.dart';

// void main() async {
void main() {
  // final data = await DisplayMockApi().getMenusByMallType('market');
  // print(data);

  // final data = await DisplayRepositoryImpl(DisplayMockApi()).getMenusByMallType(mallType: MallType.market);
  // print(data);

  setLocator();
  // final menus = await DisplayUsecase(DisplayRepositoryImpl(DisplayMockApi())).execute(usecase: GetMenusUsecase(mallType: MallType.market));
  // final menus = await locator<DisplayUsecase>()
  //     .execute(usecase: GetMenusUsecase(mallType: MallType.market));
  // print(menus);

  // try {
  //   final test = await DisplayMockApi().getMenusByMallType('market');
  //   // print(test);
  //   CustomLogger.logger.d(test);
  // } catch(error) {
  //   final errorData = CommonException.setError(error);
  //   CustomLogger.logger.e(errorData);
  // }

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
