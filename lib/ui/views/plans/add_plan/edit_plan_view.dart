import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myplans/models/plan.dart';
import 'package:myplans/ui/smart_widgets/objectives/add_objective_button.dart';
import 'package:myplans/ui/smart_widgets/objectives/objectives_list_add.dart';
import 'package:myplans/ui/smart_widgets/plans/add_plan_button.dart';

import 'package:myplans/ui/views/plans/add_plan/edit_plan_view_model.dart';
import 'package:myplans/ui/widgets/core/left_text_form.dart';

import 'package:stacked/stacked.dart';

class EditPlan extends HookWidget {
  final Plan plan;
  const EditPlan([this.plan]);

  @override
  Widget build(BuildContext context) {
    final _titleTextController = useTextEditingController()
      ..text = plan == null ? '' : plan.title;
    final _addObjectiveTextController = useTextEditingController();
    return ViewModelBuilder<EditPlanViewModel>.nonReactive(
      builder: (_, viewModel, __) {
        return Scaffold(
          appBar: AppBar(
            title: Text(plan == null ? 'Add plan' : 'Edit plan'),
            actions: [
              AddPlanButton(),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.only(
              top: 16,
              left: 8,
              right: 8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LeftTextForm('Title'),
                TextField(
                  controller: _titleTextController,
                  decoration: InputDecoration(
                    hintText: 'Become a proffessional flutter developper!',
                  ),
                  onChanged: (val) => viewModel.setTitle(val),
                  maxLength: 52,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: LeftTextForm(
                        'Add Objective',
                      ),
                    ),
                    AddObjectiveButton(),
                  ],
                ),
                TextField(
                  controller: _addObjectiveTextController,
                  decoration: InputDecoration(
                      hintText: 'Read throught the flutter documentation'),
                  onChanged: (val) => viewModel.setAddObjectiveText(val),
                  maxLength: 60,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'My Objectives',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Expanded(
                  child: ObjectivesListAdd(),
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () =>
          EditPlanViewModel(_addObjectiveTextController, plan),
    );
  }
}
