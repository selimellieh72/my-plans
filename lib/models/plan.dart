import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:myplans/models/objective.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
abstract class Plan implements _$Plan {
  const Plan._();
  @HiveType(typeId: 1, adapterName: 'PlanAdapter')
  const factory Plan({
    @HiveField(2) String id,
    @HiveField(0) String title,
    @HiveField(1) List<Objective> objectives,
  }) = _Plan;
  factory Plan.empty() =>
      Plan(id: DateTime.now().toString(), title: '', objectives: []);
  double get completedValue => objectives.length != 0
      ? (objectives.where((p) => p.isCompleted).length / objectives.length)
      : 0;
  int get completedPercentage =>
      objectives.length != 0 ? (completedValue * 100).round() : 0;
}
