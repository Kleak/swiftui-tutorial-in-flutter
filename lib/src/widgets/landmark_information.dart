import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
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
          Row(
            children: [
              Text(
                landmark.name,
                style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: GestureDetector(
                  child: Builder(
                    builder: (context) {
                      final _landmark = context.select(
                          (LandmarksBloc value) => value.state.firstWhere((element) => element.id == landmark.id));
                      return Icon(_landmark.isFavorite ? CupertinoIcons.star_fill : CupertinoIcons.star);
                    },
                  ),
                  onTap: () {
                    context.read<LandmarksBloc>().add(LandmarkEvent.toggleFavorite(landmark));
                  },
                ),
              ),
            ],
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
