import 'package:flutter/material.dart';
import 'package:myplans/ui/views/plans/plan/plan_view_model.dart';
import 'package:stacked/stacked.dart';

class PlanDropDown extends ViewModelWidget<PlanViewModel> {
  PlanDropDown() : super(reactive: false);
  @override
  Widget build(BuildContext context, PlanViewModel viewModel) {
    return PopupMenuButton(
      itemBuilder: (_) => [
        PopupMenuItem(
          child: const Text('Edit'),
          value: PopUpMenu.edit,
        ),
        PopupMenuItem(
          child: const Text('Delete'),
          value: PopUpMenu.delete,
        ),
      ],
      onSelected: (val) {
        switch (val) {
          case PopUpMenu.delete:
            viewModel.deletePlan();
            break;
          case PopUpMenu.edit:
            viewModel.goToEditPage();
            break;
        }
      },
    );
  }
}

enum PopUpMenu {
  delete,
  edit,
}
