// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/plan.dart';
import '../ui/views/plans/add_plan/edit_plan_view.dart';
import '../ui/views/plans/plan/plan_view.dart';
import '../ui/views/plans/plans_view.dart';

class Routes {
  static const String plansView = '/';
  static const String editPlan = '/edit-plan';
  static const String planView = '/plan-view';
  static const all = <String>{
    plansView,
    editPlan,
    planView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.plansView, page: PlansView),
    RouteDef(Routes.editPlan, page: EditPlan),
    RouteDef(Routes.planView, page: PlanView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    PlansView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlansView(),
        settings: data,
      );
    },
    EditPlan: (data) {
      final args = data.getArgs<EditPlanArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditPlan(args.plan),
        settings: data,
      );
    },
    PlanView: (data) {
      final args = data.getArgs<PlanViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => PlanView(args.planId),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EditPlan arguments holder class
class EditPlanArguments {
  final Plan plan;
  EditPlanArguments({@required this.plan});
}

/// PlanView arguments holder class
class PlanViewArguments {
  final String planId;
  PlanViewArguments({@required this.planId});
}
