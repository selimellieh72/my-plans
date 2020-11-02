import 'package:flutter/material.dart';
import 'package:myplans/ui/smart_widgets/plans/go_to_add_plan_button.dart';
import 'package:myplans/ui/smart_widgets/plans/plans_drop_down.dart';
import 'package:myplans/ui/smart_widgets/plans/plans_list.dart';
import 'package:myplans/ui/views/plans/plans_viewmodel.dart';

import 'package:stacked/stacked.dart';

class PlansView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PlansViewModel>.reactive(
      builder: (_, viewModel, __) => Scaffold(
        appBar: AppBar(
          title: const Text('My plans'),
          actions: [PlansPopUpMenu()],
        ),
        body: viewModel.isBusy
            ? Center(
                child: CircularProgressIndicator(),
              )
            : viewModel.plans.isEmpty
                ? Center(
                    child: Text('You have no plans. Go ahead and add some!'),
                  )
                : PlansList(),
        floatingActionButton: GoToAddPlanButton(),
      ),
      viewModelBuilder: () => PlansViewModel(),
      onModelReady: (m) => m.fetchPlans(),
    );
  }
}
