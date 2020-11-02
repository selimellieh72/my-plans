import 'package:flutter/material.dart';
import 'package:myplans/app/injector.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/router.gr.dart' as r;
import 'package:myplans/ui/views/plans/plans_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: r.Router(),
      home: PlansView(),
      navigatorKey: getIt.get<NavigationService>().navigatorKey,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.purple,
        accentColor: Colors.amber,
        floatingActionButtonTheme:
            ThemeData.light().floatingActionButtonTheme.copyWith(
                  backgroundColor: Colors.amber,
                ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black),
            ),
      ),
    );
  }
}
