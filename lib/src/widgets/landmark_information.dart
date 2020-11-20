import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarks/src/models/landmark.dart';

class LandmarkInformation extends StatelessWidget {
  final Landmark landmark;

  const LandmarkInformation({Key key, @required this.landmark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            landmark.name,
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
          Row(
            children: [
              Text(
                landmark.park,
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
              Spacer(),
              Text(
                landmark.state,
                style: CupertinoTheme.of(context).textTheme.textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
