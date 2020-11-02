// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/functional_services/api.dart';
import '../services/state_services/plans.dart';
import '../services/functional_services/third_party.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyServices = _$ThirdPartyServices();
  gh.lazySingleton<Api>(() => Api());
  gh.factory<DialogService>(() => thirdPartyServices.dialogService);
  gh.lazySingleton<NavigationService>(
      () => thirdPartyServices.navigationService);
  gh.lazySingleton<PlansService>(() => PlansService());
  gh.factory<SnackbarService>(() => thirdPartyServices.snackbarService);
  return get;
}

class _$ThirdPartyServices extends ThirdPartyServices {}
