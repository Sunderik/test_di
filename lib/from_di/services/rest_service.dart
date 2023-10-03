import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

/// Интерфейс сервиса запросов
abstract class IRestService {
  Future<void> get();

  Future<void> post();

  Future<void> put();

  Future<void> delete();
}

/// Реализация сервиса запросов на тестовый сервер
@LazySingleton(as: IRestService, env: [Environment.dev])
class RestServiceDev implements IRestService {
  final Client client;
  late final String baseUrl;

  RestServiceDev(this.client) {
    baseUrl = 'TestServerBaseURL';
  }

  @override
  Future<void> delete() async {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> get() async {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> post() async {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> put() async {
    return Future.delayed(const Duration(seconds: 1));
  }
}

/// Реализация сервиса запросов на основной сервер
@LazySingleton(as: IRestService, env: [Environment.prod])
class RestServiceProd implements IRestService {
  final Client client;
  late final String baseUrl;

  RestServiceProd(this.client) {
    baseUrl = 'ProdServerBaseURL';
  }

  @override
  Future<void> delete() async {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> get() async {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> post() async {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<void> put() async {
    return Future.delayed(const Duration(seconds: 1));
  }
}
