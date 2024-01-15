import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/menu/menu.model.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../domain/usecase/menu/get_menus.usecase.dart';

part 'menu_event.dart';

part 'menu_state.dart';

part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final DisplayUsecase _displayUsecase;

  MenuBloc(this._displayUsecase) : super(MenuState()) {
    on<MenuEvent>((event, emit) {
      on<MenuInitialized>(_onMenusInitialized);
    });
  }

  /// GNB 초기화
  Future<void> _onMenusInitialized(
    MenuInitialized event,
    Emitter<MenuState> emit,
  ) async {
    final mallType = event.mallType;

    emit(state.copyWith(status: Status.loading));
    await Future.delayed(Duration(seconds: 2));
    try {
      final  response = await _fetch(mallType: mallType);
      response.when(
        success: (menus) {
          emit(state.copyWith(
            status: Status.success,
            menus: menus,
            mallType: mallType,
          ));
        },
        failure: (error) {
          emit(state.copyWith(
            status: Status.error,
            error: error,
          ));
        },
      );
    } catch (error) {
      CustomLogger.logger.e(error);
      emit(
        state.copyWith(
          status: Status.error,
          error: CommonException.setError(error),
        ),
      );
    }
  }

  Future<Result<List<Menu>>> _fetch({required MallType mallType}) async {
    return await _displayUsecase.execute(
      usecase: GetMenusUsecase(mallType: mallType),
    );
  }
}
