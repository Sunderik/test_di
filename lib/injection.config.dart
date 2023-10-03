// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:testing_di/from_di/indection_module.dart' as _i12;
import 'package:testing_di/from_di/repositories/repository_1.dart' as _i5;
import 'package:testing_di/from_di/repositories/repository_2.dart' as _i6;
import 'package:testing_di/from_di/repositories/repository_3.dart' as _i7;
import 'package:testing_di/from_di/repositories/repository_4.dart' as _i8;
import 'package:testing_di/from_di/repositories/repository_5.dart' as _i9;
import 'package:testing_di/from_di/services/db_service.dart' as _i4;
import 'package:testing_di/from_di/services/rest_service.dart' as _i10;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.lazySingleton<_i3.Client>(() => injectionModule.httpClient);
    gh.lazySingleton<_i4.IDBService>(() => _i4.DBService());
    gh.factory<_i5.IRepository1>(
      () => _i5.MockReports1(),
      registerFor: {_test},
    );
    gh.factory<_i6.IRepository2>(
      () => _i6.MockReports2(),
      registerFor: {_test},
    );
    gh.factory<_i7.IRepository3>(
      () => _i7.MockReports3(),
      registerFor: {_test},
    );
    gh.factory<_i8.IRepository4>(
      () => _i8.MockReports4(),
      registerFor: {_test},
    );
    gh.factory<_i9.IRepository5>(
      () => _i9.MockReports5(),
      registerFor: {_test},
    );
    gh.lazySingleton<_i10.IRestService>(
      () => _i10.RestServiceDev(gh<_i3.Client>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i10.IRestService>(
      () => _i10.RestServiceProd(gh<_i3.Client>()),
      registerFor: {_prod},
    );
    await gh.lazySingletonAsync<_i11.SharedPreferences>(
      () => injectionModule.prefs,
      preResolve: true,
    );
    gh.factory<_i5.IRepository1>(
      () => _i5.Reports1(gh<_i10.IRestService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i6.IRepository2>(
      () => _i6.Reports2(gh<_i10.IRestService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i7.IRepository3>(
      () => _i7.Reports3(gh<_i10.IRestService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i8.IRepository4>(
      () => _i8.Reports4(gh<_i10.IRestService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    gh.factory<_i9.IRepository5>(
      () => _i9.Reports5(gh<_i10.IRestService>()),
      registerFor: {
        _dev,
        _prod,
      },
    );
    return this;
  }
}

class _$InjectionModule extends _i12.InjectionModule {}
