import 'package:flutter/material.dart';
import 'package:myplans/ui/views/plans/add_plan/edit_plan_view_model.dart';
import 'package:myplans/ui/widgets/objectives/objective.dart';
import 'package:stacked/stacked.dart';

class ObjectivesListAdd extends ViewModelWidget<EditPlanViewModel> {
  @override
  Widget build(BuildContext context, EditPlanViewModel viewModel) {
    return ReorderableListView(
      key: UniqueKey(),
      onReorder: viewModel.reOrderObjective,
      padding: const EdgeInsets.all(10),
      children: List.generate(
        viewModel.plan.objectives.length,
        (i) {
          final obj = viewModel.plan.objectives[i];
          return Dismissible(
            key: UniqueKey(),
            onDismissed: (_) => viewModel.deleteObjective(obj),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            child: ObjectiveWidget(
              key: ValueKey(obj.id),
              objective: obj,
              position: i,
            ),
          );
        },
      ),
    );
  }
}
