import 'package:e_commerce_app/core/utils/constant.dart';
import 'package:e_commerce_app/data/data_source/mock/display_mock_api.dart';
import 'package:e_commerce_app/data/data_source/remote/display.api.dart';
import 'package:e_commerce_app/data/dto/common/response_wrapper/response_wrapper.dart';
import 'package:e_commerce_app/data/dto/display/menu/menu_dto.dart';
import 'package:e_commerce_app/data/mapper/common.mapper.dart';
import 'package:e_commerce_app/data/mapper/display.mapper.dart';
import 'package:e_commerce_app/data/repository_impl/display.repository_impl.dart';
import 'package:e_commerce_app/domain/model/display/menu/menu.model.dart';
import 'package:e_commerce_app/domain/repository/display.repository.dart';

import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockDisplayApi extends Mock implements DisplayApi {}

void main() {
  late DisplayRepository displayRepository;
  late DisplayApi displayApi;

  setUpAll(() {
    displayApi = MockDisplayApi();
    displayRepository = DisplayRepositoryImpl(displayApi);
    // displayRepository = DisplayRepositoryImpl(displayApi, DisplayDao());
  });

  test('의존성 주입 및 객체 생성 완료', () {
    expect(displayRepository, isNotNull);
  });

  group('메뉴 리스트 불러오기', () {
    // api 호출 테스트
    test('api 호출 완료', () async {
      try {
        await displayRepository.getMenusByMallType(mallType: MallType.market);
      } catch (_) {}
      verify(() => displayApi.getMenusByMallType(any())).called(1);
    });

    test('api 호출 실패', () async {
      final exception = Exception('error');
      when(() => displayApi.getMenusByMallType(any())).thenThrow(exception);
      expect(
          () => displayRepository.getMenusByMallType(mallType: MallType.market),
          throwsA(exception));
    });

    //실패
    // test('메뉴 리스트 불러오기 실패', () async {
    //   final exception = Exception('common_error');
    //   when(() => displayApi.getMenusByMallType(any())).thenThrow(exception);
    //   expect(
    //       () async =>
    //           displayRepository.getMenusByMallType(mallType: MallType.market),
    //       throwsA(exception));
    // });

    // 성공 (MallType : market)
    test('api 호출 성공적으로 불러옴', () async {
      final mallType = MallType.market;
      final ResponseWrapper<List<MenuDto>> mockingData =
          await DisplayMockApi().getMenusByMallType(mallType.name);

      when(() => displayApi.getMenusByMallType(any()))
          .thenAnswer((_) async => mockingData);

      final actual =
          await displayRepository.getMenusByMallType(mallType: mallType);

      final expected = mockingData.toModel<List<Menu>>(
          mockingData.data?.map((menuDto) => menuDto.toModel()).toList() ?? []);
      expect(actual, expected);
    });
  });
}
