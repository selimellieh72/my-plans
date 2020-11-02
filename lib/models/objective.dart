import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'objective.freezed.dart';
part 'objective.g.dart';

@freezed
abstract class Objective with _$Objective {
  @HiveType(typeId: 0, adapterName: 'ObjectiveAdapter')
  const factory Objective({
    @HiveField(2) @required String id,
    @HiveField(0) @required String text,
    @HiveField(1) @required bool isCompleted,
  }) = _Objective;
}
