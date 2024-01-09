import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/theme/custom/custom_app_bar.dart';
import '../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../core/utils/constant.dart';
import '../../cubit/mall_type_cubit.dart';
import 'widgets/svg_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MallTypeCubit, MallType>(
      builder: (_, state) {
        return AnimatedContainer(
          // color: (state.isMarket)
          //     ? Theme.of(context).colorScheme.primary
          //     : Theme.of(context).colorScheme.background,
          color: state.theme.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
            child: AppBar(
              leading: SvgIconButton(
                icon: AppIcons.mainLogo,
                color: state.theme.logoColor,
                padding: 8.0,
              ),
              // leading: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: SvgPicture.asset(
              //     AppIcons.mainLogo,
              //     colorFilter: ColorFilter.mode(
              //       // state.isMarket
              //       //     ? Theme.of(context).colorScheme.onPrimary
              //       //     : Theme.of(context).colorScheme.primary,
              //       state.theme.logoColor,
              //       BlendMode.srcIn,
              //     ),
              //   ),
              // ),
              title: AnimatedContainer(
                decoration: BoxDecoration(
                  // color: (state.isMarket)
                  //     ? Theme.of(context).colorScheme.primaryContainer
                  //     : Theme.of(context).colorScheme.surface,
                  color: state.theme.containerColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(CustomAppBarTheme.tabBarRadius),
                  ),
                ),
                child: SizedBox(
                  height: 28,
                  child: DefaultTabController(
                    length: MallType.values.length,
                    initialIndex: state.index,
                    child: TabBar(
                      tabs: List.generate(
                        MallType.values.length,
                        (index) => Tab(text: MallType.values[index].toName),
                      ),
                      isScrollable: true,
                      indicator: BoxDecoration(
                        // color: state.isMarket
                        //     ? Theme.of(context).colorScheme.background
                        //     : Theme.of(context).colorScheme.primary,
                        color: state.theme.indicatorColor,
                        borderRadius: BorderRadius.all(
                            Radius.circular(CustomAppBarTheme.tabBarRadius)),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      dividerColor: Colors.transparent,
                      // labelColor: state.isMarket
                      //     ? Theme.of(context).colorScheme.primary
                      //     : Theme.of(context).colorScheme.background,
                      labelColor: state.theme.labelColor,
                      labelStyle: Theme.of(context).textTheme.labelLarge.bold,
                      labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      // unselectedLabelColor: state.isMarket
                      //     ? Theme.of(context).colorScheme.background
                      //     : Theme.of(context).colorScheme.primary,
                      unselectedLabelColor: state.theme.unselectedLabelColor,
                      unselectedLabelStyle:
                          Theme.of(context).textTheme.labelLarge,
                      onTap: (index) =>
                          context.read<MallTypeCubit>().changeIndex(index),
                      splashBorderRadius: BorderRadius.all(
                          Radius.circular(CustomAppBarTheme.tabBarRadius)),
                      tabAlignment: TabAlignment.center,
                    ),
                  ),
                ),
                duration: Duration(milliseconds: 400),
              ),
              actions: [
                SvgIconButton(
                  icon: AppIcons.location,
                  color: state.theme.iconColor,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(4.0),
                //   child: SvgPicture.asset(
                //     AppIcons.location,
                //     colorFilter: ColorFilter.mode(
                //       // state.isMarket
                //       //     ? Theme.of(context).colorScheme.background
                //       //     : Theme.of(context).colorScheme.contentPrimary,
                //       state.theme.iconColor,
                //       BlendMode.srcIn,
                //     ),
                //   ),
                // ),
                SvgIconButton(
                  icon: AppIcons.cart,
                  color: state.theme.iconColor,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(4.0),
                //   child: SvgPicture.asset(
                //     AppIcons.cart,
                //     colorFilter: ColorFilter.mode(
                //       // state.isMarket
                //       //     ? Theme.of(context).colorScheme.background
                //       //     : Theme.of(context).colorScheme.contentPrimary,
                //       state.theme.iconColor,
                //       BlendMode.srcIn,
                //     ),
                //   ),
                // ),
              ],
              backgroundColor: Colors.transparent,
              centerTitle: true,
              leadingWidth: 86.0,
            ),
          ),
          duration: const Duration(milliseconds: 400),
        );
      },
    );
  }
}
