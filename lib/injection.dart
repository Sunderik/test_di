import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../injection.config.dart';

final injector = GetIt.instance;

@InjectableInit(
  ignoreUnregisteredTypes: [Client],
)
Future<void> configureInjectionAsync(Environment environment) async {
  await injector.init(environment: environment.name);
}

Future<void> configureTestInjection() async {
  await injector.init(environment: Env.test.name);
}

abstract class Env {
  static const dev = Environment('dev');
  static const prod = Environment('prod');
  static const test = Environment('test');
}
