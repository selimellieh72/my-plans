import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@module
abstract class ThirdPartyServices {
  @lazySingleton
  NavigationService get navigationService => NavigationService();

  DialogService get dialogService => DialogService();

  SnackbarService get snackbarService => SnackbarService();
}
