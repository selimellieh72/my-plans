import 'package:flutter/material.dart';
import 'package:myplans/ui/smart_widgets/objectives/toogelable_objective_widget.dart';
import 'package:myplans/ui/views/plans/plan/plan_view_model.dart';
import 'package:myplans/ui/widgets/objectives/objective.dart';
import 'package:stacked/stacked.dart';

class ObjectivesListView extends ViewModelWidget<PlanViewModel> {
  @override
  Widget build(BuildContext context, PlanViewModel viewModel) {
    final objectives = viewModel.plan.objectives;
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'My objectives:',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: objectives.length,
            itemBuilder: (_, i) => ToogelableObjectiveWidget(
              position: i,
              objective: objectives[i],
            ),
          ),
        ),
      ],
    );
  }
}
