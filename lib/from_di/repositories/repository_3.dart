import 'package:injectable/injectable.dart';
import 'package:testing_di/from_di/repositories/base_repository.dart';
import 'package:testing_di/from_di/services/rest_service.dart';

abstract class IRepository3 extends IBaseRepository {
  ///
  Future<void> uniqueMethod({Duration timeout = const Duration(seconds: 20)});
}

@Injectable(as: IRepository3, env: [Environment.dev, Environment.prod])
class Reports3 implements IRepository3 {
  final IRestService _restService;

  Reports3(
    this._restService,
  );

  @override
  Future<void> methodDelete({Duration timeout = const Duration(seconds: 20)}) async {
    await _restService.delete();
  }

  @override
  Future<void> methodGet({Duration timeout = const Duration(seconds: 20)}) async {
    await _restService.get();
  }

  @override
  Future<void> methodPost({Duration timeout = const Duration(seconds: 20)}) async {
    await _restService.post();
  }

  @override
  Future<void> methodPut({Duration timeout = const Duration(seconds: 20)}) async {
    await _restService.put();
  }

  @override
  Future<void> uniqueMethod({Duration timeout = const Duration(seconds: 20)}) {
    return Future.delayed(const Duration(seconds: 5));
  }
}

@Injectable(as: IRepository3, env: [Environment.test])
class MockReports3 implements IRepository3 {
  MockReports3();

  @override
  Future<void> methodDelete({Duration timeout = const Duration(seconds: 20)}) async {
    print('test delete query');
  }

  @override
  Future<void> methodGet({Duration timeout = const Duration(seconds: 20)}) async {
    print('test get query');
  }

  @override
  Future<void> methodPost({Duration timeout = const Duration(seconds: 20)}) async {
    print('test post query');
  }

  @override
  Future<void> methodPut({Duration timeout = const Duration(seconds: 20)}) async {
    print('test put query');
  }

  @override
  Future<void> uniqueMethod({Duration timeout = const Duration(seconds: 20)}) async {
    print('test uniqueMethod query');
  }
}
