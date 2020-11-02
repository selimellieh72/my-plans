import 'package:flutter/material.dart';
import 'package:myplans/ui/smart_widgets/objectives/objective_list_view.dart';
import 'package:myplans/ui/smart_widgets/plans/plan_drop_down.dart';
import 'package:myplans/ui/views/plans/plan/plan_view_model.dart';
import 'package:myplans/ui/widgets/plan/plan_completion.dart';
import 'package:myplans/ui/widgets/plan/plan_title.dart';
import 'package:stacked/stacked.dart';

class PlanView extends StatelessWidget {
  final String planId;
  PlanView(this.planId);
  @override
  Widget build(BuildContext context) {
    print('buiild');
    return ViewModelBuilder<PlanViewModel>.reactive(
      builder: (_, viewModel, __) {
        final plan = viewModel.plan;
        return Scaffold(
          appBar: AppBar(
            title: Text(plan.title),
            actions: [
              PlanDropDown(),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                PlanTitle(plan.title),
                Divider(),
                const SizedBox(
                  height: 10,
                ),
                PlanCompletion(
                  completedPercentage: plan.completedPercentage,
                  completedValue: plan.completedValue,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ObjectivesListView(),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => PlanViewModel(planId),
    );
  }
}
