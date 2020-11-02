import 'package:myplans/app/injector.dart';
import 'package:myplans/app/router.gr.dart';
import 'package:myplans/models/objective.dart';
import 'package:myplans/models/plan.dart';
import 'package:myplans/services/state_services/plans.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PlanViewModel extends ReactiveViewModel {
  final String planId;

  final _plansService = getIt.get<PlansService>();
  final _navigator = getIt.get<NavigationService>();
  final _dialogService = getIt.get<DialogService>();

  PlanViewModel(this.planId);

  Plan get plan => _plansService.findById(planId);

  Future<void> deletePlan() {
    return _plansService.deletePlan(planId).then(
          (_) => _navigator.back(),
        );
  }

  Objective getObjectiveById(String id) =>
      plan.objectives.firstWhere((o) => o.id == id);

  void setObjectiveIsCompleted(Objective obj) async {
    if (plan.completedValue == 1) {
      const recommendation =
          '(Only do that if you completed the objective by mistake)';
      final response = await _dialogService.showConfirmationDialog(
        title: 'Are you sure?!',
        description:
            'By doing so, you will uncomplete your completed objective. $recommendation',
        cancelTitle: 'No',
        confirmationTitle: 'Yes',
      );
      if (!response.confirmed) {
        return;
      }
    }

    final objIndex = plan.objectives.indexOf(obj);
    plan.objectives.remove(obj);
    obj = obj.copyWith.call(isCompleted: !obj.isCompleted);
    plan.objectives.insert(objIndex, obj);
    _plansService.changePlan(newPlan: plan, oldPlanId: plan.id);
    notifyListeners();
  }

  void goToEditPage() {
    print(plan);
    _navigator.navigateTo(Routes.editPlan,
        arguments: EditPlanArguments(plan: plan));
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_plansService];
}
