import 'package:flutter/material.dart';
import 'package:myplans/models/objective.dart';

import 'package:myplans/ui/views/plans/plan/plan_view_model.dart';

import 'package:myplans/ui/widgets/objectives/objective.dart';
import 'package:stacked/stacked.dart';

class ToogelableObjectiveWidget extends ViewModelWidget<PlanViewModel> {
  final Objective objective;
  final int position;

  ToogelableObjectiveWidget({
    Key key,
    @required this.objective,
    @required this.position,
  }) : super(key: key);
  @override
  Widget build(
    BuildContext context,
    PlanViewModel viewModel,
  ) {
    return GestureDetector(
      onLongPress: () {
        viewModel.setObjectiveIsCompleted(objective);
      },
      child: ObjectiveWidget(
        objective: objective,
        position: position,
      ),
    );
  }
}
