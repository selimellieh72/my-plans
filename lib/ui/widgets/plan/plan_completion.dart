import 'package:flutter/material.dart';

class PlanCompletion extends StatelessWidget {
  const PlanCompletion({
    Key key,
    @required this.completedPercentage,
    @required this.completedValue,
  }) : super(key: key);

  final int completedPercentage;
  final double completedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            'Completed:',
            textAlign: TextAlign.left,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Chip(
          backgroundColor: Theme.of(context).primaryColor,
          label: Text(
            '${completedPercentage}%',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        LinearProgressIndicator(
          value: completedValue,
        ),
      ],
    );
  }
}
