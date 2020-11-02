import 'package:flutter/material.dart';
import 'package:myplans/ui/views/plans/add_plan/edit_plan_view_model.dart';
import 'package:stacked/stacked.dart';

class AddObjectiveButton extends ViewModelWidget<EditPlanViewModel> {
  @override
  Widget build(BuildContext context, EditPlanViewModel viewModel) {
    return IconButton(
      icon: const Icon(
        Icons.add,
      ),
      onPressed: !viewModel.toAddObjectiveText.trim().isEmpty
          ? viewModel.addObjective
          : null,
      color: !viewModel.toAddObjectiveText.trim().isEmpty
          ? Theme.of(context).accentColor
          : null,
    );
  }
}
