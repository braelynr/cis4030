import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/models/schedule.dart';

class AttractionsSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScheduleModel>(
      builder: (context, schedule, child) => Stack(
        children: [
          // Use SomeExpensiveWidget here, without rebuilding every time.
          if (child != null) child,
            _attractionList(context, schedule),
        ],
      ),
      // Build the expensive widget here.
      child: SomeExpensiveWidget(),
    );
  }

  Widget _attractionList(BuildContext context, ScheduleModel schedule) {
    if(schedule.listLength == 0)
      return Center(
          child: Text(
            "No Attractions Scheduled",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
      );
    else
      return Center(
          child: ListView.builder(
            itemCount: schedule.listLength,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(schedule.items[index].title),
                subtitle: Text(schedule.items[index].address),
              );
            },
          ),
      );
  }

  SomeExpensiveWidget(){
    return Center( );//child: Text("hello"));
  }
}

