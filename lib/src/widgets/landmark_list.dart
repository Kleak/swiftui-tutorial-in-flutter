import 'dart:async';

import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';
import 'package:landmarks/src/widgets/navigation_link.dart';

class LandmarkList extends StatefulWidget {
  @override
  _LandmarkListState createState() => _LandmarkListState();
}

class _LandmarkListState extends State<LandmarkList> {
  final animatedListKey = GlobalKey<SliverAnimatedListState>();
  StreamSubscription<Landmark> onNewFavoriteSubscription;
  StreamSubscription<Landmark> onRemoveFavoriteSubscription;

  bool showOnlyFavorite = false;
  List<Landmark> currentShowingLandmark;

  @override
  void initState() {
    super.initState();

    currentShowingLandmark = [...context.read<LandmarksBloc>().state];

    onNewFavoriteSubscription = context.read<LandmarksBloc>().onNewFavorite.listen(addLandmark);
    onRemoveFavoriteSubscription =
        context.read<LandmarksBloc>().onRemoveFavorite.where((event) => showOnlyFavorite).listen(removeLandmark);
  }

  @override
  void dispose() {
    onNewFavoriteSubscription.cancel();
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

                    final landmarks = context.read<LandmarksBloc>().state;
                    final notFavoriteLandmarks = landmarks.where((element) => !element.isFavorite).toList();
                    if (showOnlyFavorite) {
                      notFavoriteLandmarks.forEach(removeLandmark);
                    } else {
                      notFavoriteLandmarks.forEach(addLandmark);
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
              landmark: currentShowingLandmark[index],
              animation: animation,
            );
          },
          initialItemCount: currentShowingLandmark.length,
        ),
      ],
    );
  }

  void addLandmark(Landmark landmark) {
    if (currentShowingLandmark.indexWhere((element) => element.id == landmark.id) != -1) {
      return;
    }
    final landmarks = context.read<LandmarksBloc>().state;
    final index = landmarks.indexWhere((element) => element.id == landmark.id);
    currentShowingLandmark.insert(index, landmark);
    animatedListKey.currentState.insertItem(index);
  }

  void removeLandmark(Landmark landmark) {
    if (currentShowingLandmark.indexWhere((element) => element.id == landmark.id) == -1) {
      return;
    }
    final index = currentShowingLandmark.indexWhere((element) => element.id == landmark.id);
    final removedLandmark = currentShowingLandmark.removeAt(index);
    animatedListKey.currentState.removeItem(
      index,
      (context, animation) => LandmarkItem(landmark: removedLandmark, animation: animation),
    );
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
