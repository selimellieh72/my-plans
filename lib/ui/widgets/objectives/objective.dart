import 'package:flutter/material.dart';
import 'package:myplans/models/objective.dart';

class ObjectiveWidget extends StatelessWidget {
  final Objective objective;
  final int position;

  const ObjectiveWidget({
    Key key,
    @required this.objective,
    @required this.position,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: objective.isCompleted ? Colors.green : null,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${position + 1}. ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                TextSpan(
                    text: objective.text,
                    style: TextStyle(color: Theme.of(context).primaryColor))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
