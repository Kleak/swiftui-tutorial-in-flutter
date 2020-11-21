import 'dart:async';

import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/filtered_landmarks.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';
import 'package:landmarks/src/widgets/navigation_link.dart';

class LandmarkList extends StatefulWidget {
  final List<Landmark> landmarks;

  const LandmarkList({Key key, @required this.landmarks}) : super(key: key);

  @override
  _LandmarkListState createState() => _LandmarkListState();
}

class _LandmarkListState extends State<LandmarkList> {
  final animatedListKey = GlobalKey<SliverAnimatedListState>();

  StreamSubscription<Landmark> onRemoveFavoriteSubscription;
  bool showOnlyFavorite = false;

  @override
  void initState() {
    super.initState();
    onRemoveFavoriteSubscription = context
        .read<FilteredLandmarksBloc>()
        .onRemoveFavorite
        .where((event) => showOnlyFavorite)
        .listen(removeLandmark);
  }

  @override
  void didUpdateWidget(covariant LandmarkList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.landmarks.length < oldWidget.landmarks.length) {
      final oldLandmarks = [...oldWidget.landmarks];
      final removedLandmarks = oldWidget.landmarks.where((element) => !widget.landmarks.contains(element));
      removedLandmarks.forEach((element) {
        final index = oldLandmarks.indexOf(element);
        final removedLandmark = oldLandmarks.removeAt(index);
        animatedListKey.currentState
            .removeItem(index, (context, animation) => LandmarkItem(landmark: removedLandmark, animation: animation));
      });
    } else if (widget.landmarks.length > oldWidget.landmarks.length) {
      final landmarks = [...widget.landmarks];
      final addedLandmarks = widget.landmarks.where((element) => !oldWidget.landmarks.contains(element));
      addedLandmarks.forEach((element) {
        final index = landmarks.indexOf(element);
        animatedListKey.currentState.insertItem(index);
      });
    }
  }

  @override
  void dispose() {
    onRemoveFavoriteSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Expanded(child: Text('Show only favorite')),
                CupertinoSwitch(
                  value: showOnlyFavorite,
                  onChanged: (newValue) {
                    setState(() {
                      showOnlyFavorite = newValue;
                    });

                    if (showOnlyFavorite) {
                      final notFavoriteLandmarks = widget.landmarks.where((element) => !element.isFavorite).toList();
                      notFavoriteLandmarks.forEach(removeLandmark);
                    } else {
                      context.read<FilteredLandmarksBloc>().add(FilteredLandmarksEvent.reset());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        SliverAnimatedList(
          key: animatedListKey,
          itemBuilder: (context, index, animation) {
            return LandmarkItem(
              landmark: widget.landmarks[index],
              animation: animation,
            );
          },
          initialItemCount: widget.landmarks.length,
        ),
      ],
    );
  }

  void addLandmark(Landmark landmark) {
    context.read<FilteredLandmarksBloc>().add(FilteredLandmarksEvent.add(landmark));
  }

  void removeLandmark(Landmark landmark) {
    context.read<FilteredLandmarksBloc>().add(FilteredLandmarksEvent.remove(landmark));
  }
}

class LandmarkItem extends StatelessWidget {
  final Animation<double> animation;
  final Landmark landmark;

  const LandmarkItem({Key key, @required this.animation, @required this.landmark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axis: Axis.vertical,
      sizeFactor: animation,
      child: NavigationLink(
        child: LandmarkRow(landmark: landmark),
        onTap: () {
          UriRouteManager.of(context).pushUri(Uri.parse('/landmark/${landmark.id}'));
        },
      ),
    );
  }
}
