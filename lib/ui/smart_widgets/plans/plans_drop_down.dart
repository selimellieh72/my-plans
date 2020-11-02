import 'package:flutter/material.dart';
import 'package:myplans/ui/views/plans/plans_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PlansPopUpMenu extends ViewModelWidget<PlansViewModel> {
  const PlansPopUpMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PlansViewModel viewModel) {
    return PopupMenuButton(
      itemBuilder: (_) => [
        PopupMenuItem(
          child: Row(
            children: [
              if (viewModel.showOnlyCompleted)
                const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              const Text('Completed only'),
            ],
          ),
          value: PopupMenu.showCompletedOnly,
        ),
      ],
      onSelected: (val) {
        switch (val) {
          case PopupMenu.showCompletedOnly:
            viewModel.setShowOnlyCompleted();
            break;
        }
      },
    );
  }
}

enum PopupMenu {
  showCompletedOnly,
}
