// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../detail/controller/detail_controller.dart' as _i5;
import '../../home/controller/home_controller.dart' as _i3;
import '../../services/user_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.HomeController>(() => _i3.HomeController());
  gh.lazySingleton<_i4.UserService>(() => _i4.UserService());
  gh.factory<_i5.DetailController>(
      () => _i5.DetailController(get<_i4.UserService>()));
  return get;
}
