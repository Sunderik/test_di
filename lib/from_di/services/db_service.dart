import 'package:injectable/injectable.dart';

///
abstract class IDBService {
  Future<void> sendQuery(String query);
}

///
@LazySingleton(as: IDBService)
class DBService implements IDBService {
  DBService();

  @override
  Future<void> sendQuery(String query) async {
    return Future.delayed(const Duration(seconds: 1));
  }
}
