import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';
import 'package:landmarks/src/widgets/navigation_link.dart';

class LandmarkList extends StatefulWidget {
  @override
  _LandmarkListState createState() => _LandmarkListState();
}

class _LandmarkListState extends State<LandmarkList> {
  final animatedListKey = GlobalKey<SliverAnimatedListState>();

  bool showOnlyFavorite = false;
  List<Landmark> currentShowingLandmark = [...landmarks];

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
                      final notFavoriteLandmarks = landmarks.where((element) => !element.isFavorite).toList();
                      for (final landmark in notFavoriteLandmarks) {
                        final index = currentShowingLandmark.indexOf(landmark);
                        final removedLandmark = currentShowingLandmark.removeAt(index);
                        animatedListKey.currentState.removeItem(
                          index,
                          (context, animation) => LandmarkItem(landmark: removedLandmark, animation: animation),
                        );
                      }
                    } else {
                      final notFavoriteLandmarks = landmarks.where((element) => !element.isFavorite).toList();
                      notFavoriteLandmarks.forEach((element) {
                        final index = landmarks.indexOf(element);
                        currentShowingLandmark.insert(index, element);
                        animatedListKey.currentState.insertItem(index);
                      });
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
