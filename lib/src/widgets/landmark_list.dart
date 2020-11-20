import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';
import 'package:landmarks/src/widgets/navigation_link.dart';

class LandmarkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: CustomScrollView(
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return NavigationLink(
                  child: LandmarkRow(landmark: landmarks[index]),
                  onTap: () {
                    UriRouteManager.of(context).pushUri(Uri.parse('/landmark/${landmarks[index].id}'));
                  },
                );
              },
              childCount: landmarks.length,
            ),
          ),
        ],
      ),
    );
  }
}
