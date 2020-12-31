import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/filtered_landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';
import 'package:landmarks/src/widgets/navigation_link.dart';
import 'package:landmarks/src/widgets/toggle_favorite.dart';

class Landmarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: CupertinoSliverNavigationBar(
                backgroundColor: CupertinoColors.systemGrey6,
              ),
            ),
          ];
        },
        body: Builder(
          builder: (context) {
            return LandmarksBody(
                landmarks: context.select<FilteredLandmarksBloc, List<Landmark>>((bloc) => bloc.state));
          },
        ),
      ),
    );
  }
}

class LandmarksBody extends StatefulWidget {
  final List<Landmark> landmarks;

  const LandmarksBody({Key key, @required this.landmarks}) : super(key: key);

  @override
  _LandmarksBodyState createState() => _LandmarksBodyState();
}

class _LandmarksBodyState extends State<LandmarksBody> {
  final animatedListKey = GlobalKey<SliverAnimatedListState>();

  @override
  void didUpdateWidget(covariant LandmarksBody oldWidget) {
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
              children: [Expanded(child: Text('Show only favorite')), ToggleFavorite()],
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
        )
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
