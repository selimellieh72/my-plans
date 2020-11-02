import 'package:auto_route/auto_route_annotations.dart';
import 'package:myplans/ui/views/plans/add_plan/edit_plan_view.dart';
import 'package:myplans/ui/views/plans/plan/plan_view.dart';

import 'package:myplans/ui/views/plans/plans_view.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      page: PlansView,
      initial: true,
    ),
    MaterialRoute(
      page: EditPlan,
    ),
    MaterialRoute(
      page: PlanView,
    )
  ],
)
class $Router {}
