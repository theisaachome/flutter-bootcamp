

import 'package:flutter/material.dart';
import 'package:onlinecourseappp/style/appStyle.dart';


class ReviewWidget extends StatefulWidget {
  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget>
    with TickerProviderStateMixin<ReviewWidget> {

  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimatedSize(
          duration: const Duration(milliseconds: 500),
          vsync: this,
          child: ConstrainedBox(
            constraints: isExpanded ?
            BoxConstraints()
            :BoxConstraints(maxHeight: 50.0),
            child: Text(
              review,
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            isExpanded
                ? new FlatButton(
                child: const Text('show less',
                style: TextStyle(color: Colors.blueGrey),),
                onPressed: () => setState(() => isExpanded = false))
                : new FlatButton(
                child: const Text('show more',
                style: TextStyle(color: Colors.blueGrey),),
                onPressed: () => setState(() => isExpanded = true)),
          ],
        )
      ],
    );
  }
}
