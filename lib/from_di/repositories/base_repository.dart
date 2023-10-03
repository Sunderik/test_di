///
abstract class IBaseRepository {
  ///
  Future<void> methodGet({Duration timeout = const Duration(seconds: 20)});

  ///
  Future<void> methodPost({Duration timeout = const Duration(seconds: 20)});

  ///
  Future<void> methodPut({Duration timeout = const Duration(seconds: 20)});

  ///
  Future<void> methodDelete({Duration timeout = const Duration(seconds: 20)});
}
