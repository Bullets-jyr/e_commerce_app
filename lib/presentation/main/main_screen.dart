import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/category/category_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/user/user_page.dart';
import 'component/top_app_bar/top_app_bar.dart';
import 'cubit/bottom_nav_cubit.dart';
import 'cubit/mall_type_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreenView();
    // return BlocProvider(
    //   create: (_) => BottomNavCubit(),
    //   child: const MainScreenView(),
    // );
  }
}

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppBar(),
      body: BlocBuilder<BottomNavCubit, BottomNav>(
        builder: (_, state) {
          switch (state) {
            case BottomNav.home:
              return const HomePage();
            case BottomNav.category:
              return const CategoryPage();
            case BottomNav.search:
              return const SearchPage();
            case BottomNav.user:
              return const UserPage();
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavCubit, BottomNav>(
        builder: (_, state) {
          return BottomNavigationBar(
            items: List.generate(
              BottomNav.values.length,
              (index) => BottomNavigationBarItem(
                icon: SvgPicture.asset(BottomNav.values[index].icon),
                label: BottomNav.values[index].name,
                activeIcon:
                    SvgPicture.asset(BottomNav.values[index].activeIcon),
              ),
            ),
            // items: [
            //   BottomNavigationBarItem(
            //     icon: SvgPicture.asset(AppIcons.navHome),
            //     label: 'home',
            //     activeIcon: SvgPicture.asset(AppIcons.navHomeOn),
            //   ),
            //   BottomNavigationBarItem(
            //     icon: SvgPicture.asset(AppIcons.navCategory),
            //     label: 'category',
            //     activeIcon: SvgPicture.asset(AppIcons.navCategoryOn),
            //   ),
            //   BottomNavigationBarItem(
            //     icon: SvgPicture.asset(AppIcons.navSearch),
            //     label: 'search',
            //     activeIcon: SvgPicture.asset(AppIcons.navSearchOn),
            //   ),
            //   BottomNavigationBarItem(
            //     icon: SvgPicture.asset(AppIcons.navUser),
            //     label: 'user',
            //     activeIcon: SvgPicture.asset(AppIcons.navUserOn),
            //   ),
            // ],
            onTap: (index) => context.read<BottomNavCubit>().changeIndex(index),
            currentIndex: state.index,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          );
        },
      ),
    );
  }
}
