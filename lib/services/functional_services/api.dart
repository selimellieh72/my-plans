import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:myplans/models/objective.dart';
import 'package:myplans/models/plan.dart';
import 'package:path_provider/path_provider.dart' as path;

@lazySingleton
class Api {
  Box<Plan> plansBox;
  Future<void> init() async {
    final directory = await path.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    Hive.registerAdapter(ObjectiveAdapter());
    Hive.registerAdapter(PlanAdapter());
    plansBox = await Hive.openBox('Plans');
  }

  Future<int> addPlan(Plan plan) {
    return plansBox.add(plan);
  }

  Future<List<Plan>> fetchPlans() async {
    return plansBox.values.toList();
  }

  Future<void> deletePlan(int key) {
    return plansBox.delete(key);
  }

  Future<void> changePlan(int oldPlanKey, Plan newPlan) {
    return Future.wait([
      plansBox.delete(oldPlanKey),
      plansBox.putAt(oldPlanKey, newPlan),
    ]);
  }
}
