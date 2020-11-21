import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:landmarks/src/models/landmark.dart';

class LandmarkRow extends StatelessWidget {
  final Landmark landmark;

  const LandmarkRow({Key key, @required this.landmark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/${landmark.imageName}.jpg',
          width: 50,
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(landmark.name),
        ),
        Spacer(),
        Icon(landmark.isFavorite ? CupertinoIcons.star_fill : CupertinoIcons.star),
      ],
    );
  }
}
