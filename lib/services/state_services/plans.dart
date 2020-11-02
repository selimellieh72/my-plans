import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:myplans/app/injector.dart';
import 'package:myplans/models/plan.dart';
import 'package:myplans/services/functional_services/api.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class PlansService with ReactiveServiceMixin {
  final _api = getIt.get<Api>();
  RxList<Plan> _items = RxList();
  List<Plan> get items => _items.toList();
  List<Plan> get completedPlans =>
      items.where((p) => p.completedValue == 1).toList();

  PlansService() {
    listenToReactiveValues([_items]);
  }

  Future<void> fetchPlans() async {
    final items = await _api.fetchPlans();

    _items.assignAll(items);
  }

  Future<void> addPlan(Plan plan) async {
    await _api.addPlan(plan);

    _items.add(plan);
  }

  Future<void> deletePlan(String planId) async {
    final plan = _items.firstWhere((p) => p.id == planId);
    await _api.deletePlan(_items.indexOf(plan));
    _items.remove(plan);
  }

  Plan findById(String planId) {
    return _items.firstWhere((p) => p.id == planId);
  }

  void changePlan({
    @required Plan newPlan,
    @required String oldPlanId,
  }) async {
    final i = _items.indexWhere((p) => p.id == oldPlanId);
    await _api.changePlan(i, newPlan);
    _items.removeAt(i);
    _items.insert(i, newPlan);
    notifyListeners();
  }
}
