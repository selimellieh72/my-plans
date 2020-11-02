import 'package:flutter/material.dart';
import 'package:myplans/ui/views/plans/plans_viewmodel.dart';
import 'package:myplans/ui/widgets/plan/plan.dart';
import 'package:stacked/stacked.dart';

class PlansList extends ViewModelWidget<PlansViewModel> {
  @override
  Widget build(BuildContext context, PlansViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.plans.length,
      itemBuilder: (_, i) => InkWell(
        onTap: () => viewModel.navigateToPlanDetails(viewModel.plans[i].id),
        child: PlanWidget(
          title: viewModel.plans[i].title,
          completedPercentage: viewModel.plans[i].completedPercentage,
        ),
      ),
    );
  }
}
