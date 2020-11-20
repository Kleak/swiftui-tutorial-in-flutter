import 'package:flutter/cupertino.dart';
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
        body: LandmarkList(),
      ),
    );
  }
}
