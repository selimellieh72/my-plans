import 'package:myplans/app/injector.dart';
import 'package:myplans/app/router.gr.dart';
import 'package:myplans/models/plan.dart';
import 'package:myplans/services/state_services/plans.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PlansViewModel extends ReactiveViewModel {
  final _planService = getIt.get<PlansService>();
  final _navigation = getIt.get<NavigationService>();
  final _snackbar = getIt.get<SnackbarService>();

  bool _showOnlyCompleted = false;

  bool get showOnlyCompleted => _showOnlyCompleted;

  List<Plan> get plans =>
      (!_showOnlyCompleted ? _planService.items : _planService.completedPlans)
          .reversed
          .toList();

  Future<void> fetchPlans() async {
    runBusyFuture(_planService.fetchPlans());

    notifyListeners();
  }

  Future<dynamic> goToAddPlan() {
    return _navigation.navigateTo(Routes.editPlan,
        arguments: EditPlanArguments(plan: null));
  }

  Future<dynamic> navigateToPlanDetails(String planId) {
    return _navigation.navigateTo(Routes.planView,
        arguments: PlanViewArguments(planId: planId));
  }

  void setShowOnlyCompleted() {
    _showOnlyCompleted = !_showOnlyCompleted;
    notifyListeners();
  }

  @override
  void onFutureError(error, Object key) {
    _snackbar.showSnackbar(
      message: 'An error occured',
    );
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [
        _planService,
      ];
}
