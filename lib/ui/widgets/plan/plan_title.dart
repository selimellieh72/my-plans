import 'package:flutter/material.dart';

class PlanTitle extends StatelessWidget {
  const PlanTitle(this.planTitle);
  final String planTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        planTitle,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Theme.of(context).accentColor),
        textAlign: TextAlign.center,
      ),
    );
  }
}
