import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:myplans/app/injector.dart';
import 'package:myplans/models/objective.dart';
import 'package:myplans/models/plan.dart';
import 'package:myplans/services/state_services/plans.dart';

class EditPlanViewModel extends BaseViewModel {
  final TextEditingController _addObjectiveEditingController;
  final PlansService _plansService = getIt.get<PlansService>();
  final NavigationService _navigation = getIt.get<NavigationService>();

  Plan _plan = Plan.empty();

  // Used to check if the plan changed (In edit mode)
  Plan _initPlan;
  String _toAddObjectiveText = '';

  bool _isEditing = false;

  EditPlanViewModel(
    this._addObjectiveEditingController,
    Plan plan,
  ) {
    if (plan != null) {
      _isEditing = true;
      this._initPlan = plan;
      _plan = plan;
    }
  }
  String get toAddObjectiveText => _toAddObjectiveText;

  Plan get plan => _plan;

  // If _initPlan is equal to null, then we are creating a new plan.
  bool get isReadyToSubmit =>
      _plan.title.isNotEmpty &&
      _plan.objectives.length != 0 &&
      (_initPlan == null || _plan != _initPlan);

  void setTitle(String title) {
    _plan = _plan.copyWith.call(title: title);
    notifyListeners();
  }

  void setAddObjectiveText(String text) {
    _toAddObjectiveText = text;
    notifyListeners();
  }

  void addObjective() {
    final objective = Objective(
      id: DateTime.now().toString(),
      text: _toAddObjectiveText,
      isCompleted: false,
    );
    _plan =
        _plan.copyWith.call(objectives: [..._plan.objectives]..add(objective));
    _toAddObjectiveText = '';
    _addObjectiveEditingController.clear();
    _plansService.changePlan(newPlan: _plan, oldPlanId: _plan.id);
    notifyListeners();
  }

  void reOrderObjective(int oldI, int newI) {
    if (newI >= _plan.objectives.length) {
      return;
    }
    final obj = _plan.objectives[oldI];
    _plan.objectives.removeAt(oldI);
    _plan.objectives.insert(newI, obj);
    notifyListeners();
  }

  void deleteObjective(Objective obj) {
    _plan = _plan.copyWith.call(objectives: [..._plan.objectives]..remove(obj));
    _plansService.changePlan(newPlan: _plan, oldPlanId: _plan.id);
    notifyListeners();
  }

  void submitPlan() async {
    if (_isEditing) {
      _plansService.changePlan(
        newPlan: _plan,
        oldPlanId: _plan.id,
      );
      _navigation.back();
    } else {
      await _plansService.addPlan(_plan);
      _navigation.back();
    }
  }
}
