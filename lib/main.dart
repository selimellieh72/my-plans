import 'package:flutter/material.dart';

import 'package:myplans/app/injector.dart';

import 'package:myplans/services/functional_services/api.dart';

import 'package:myplans/ui/widgets/core/app_widget.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await getIt.get<Api>().init();
  runApp(MyApp());
}
