import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/filtered_landmarks.dart';
import 'package:landmarks/src/widgets/landmark_list.dart';

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
        body: Builder(builder: (context) {
          final landmarks = context.select((FilteredLandmarksBloc bloc) => bloc.state);
          return LandmarkList(landmarks: landmarks);
        }),
      ),
    );
  }
}
