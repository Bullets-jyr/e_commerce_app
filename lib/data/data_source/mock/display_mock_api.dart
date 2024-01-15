import 'dart:convert';
import 'dart:io';

import '../../dto/common/response_wrapper/response_wrapper.dart';
import '../../dto/display/menu/menu_dto.dart';
import '../remote/display.api.dart';
import 'display_mock_data.dart';

class DisplayMockApi implements DisplayApi {
  @override
  // Future<List<MenuDto>> getMenusByMallType(String mallType) {
  Future<ResponseWrapper<List<MenuDto>>> getMenusByMallType(String mallType) {
    // throw SocketException('exception_test');
    return Future(
      () => ResponseWrapper(
        // status: 'SUCCESS',
        status: 'fail',
        // code: '0000',
        code: 'GNB-0000',
        // message: '',
        message: '서비스 에러가 발생했습니다.',
        data: _menuParser(
          mallType == 'market'
              ? DisplayMockData.menusByMarket
              : DisplayMockData.menusByBeauty,
        ),
      ),
    );
    //error_test
    // return Future(
    //   () => ResponseWrapper(
    //     status: 'FAIL',
    //     code: 'GNB-0000',
    //     message: '일시적인 오류가 발생했습니다.\n 잠시 후에 다시 시도해주세요.',
    //   ),
    // );

    // return Future.delayed(
    //   const Duration(milliseconds: 400),
    //   () => ResponseWrapper(
    //     status: 'SUCCESS',
    //     code: '0000',
    //     message: '',
    //     data: menuParser(
    //       mallType == 'market'
    //           ? DisplayMockData.menusByMarket
    //           : DisplayMockData.menusByBeauty,
    //     ),
    //   ),
    // );
  }

// @override
// Future<ResponseWrapper<List<ViewModuleDto>>> getViewModulesByTabId(
//     int tabId,
//     int page,
//     ) {
//   if (page == 4) {
//     return Future.delayed(
//       Duration(milliseconds: 800),
//           () => ResponseWrapper(
//         status: 'SUCCESS',
//         code: '0000',
//         message: '',
//         data: [],
//       ),
//     );
//   }
//
//   String source = DisplayMockData.getViewModules();
//
//   return Future.delayed(
//     Duration(milliseconds: 800),
//         () => ResponseWrapper(
//       status: 'SUCCESS',
//       code: '0000',
//       message: '',
//       data: viewModuleParser(source),
//     ),
//   );
// }

// parsers: String to MenuDto
  List<MenuDto> _menuParser(String source) {
    List<MenuDto> menus = [];
    final List json = jsonDecode(source);
    menus = json.map((e) => MenuDto.fromJson(e)).toList();

    return menus;
  }

// List<ViewModuleDto> viewModuleParser(String source) {
//   List<ViewModuleDto> viewModules = [];
//   final List json = jsonDecode(source);
//   viewModules = json.map((e) => ViewModuleDto.fromJson(e)).toList();
//
//   return viewModules;
// }
}
