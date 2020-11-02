import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  final String title;
  final int completedPercentage;

  const PlanWidget({
    Key key,
    @required this.title,
    @required this.completedPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text('${completedPercentage}%'),
            ),
          ),
        ),
        title: Text(title),
        trailing: completedPercentage == 100
            ? Icon(
                Icons.check_box,
                color: Colors.green,
              )
            : Icon(Icons.close, color: Colors.red),
      ),
    );
  }
}
