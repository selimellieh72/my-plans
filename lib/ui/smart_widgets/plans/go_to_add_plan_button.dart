import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myplans/ui/views/plans/plans_viewmodel.dart';
import 'package:stacked/stacked.dart';

class GoToAddPlanButton extends ViewModelWidget<PlansViewModel> {
  const GoToAddPlanButton() : super(reactive: false);
  @override
  Widget build(BuildContext context, PlansViewModel viewModel) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: viewModel.goToAddPlan,
    );
  }
}
