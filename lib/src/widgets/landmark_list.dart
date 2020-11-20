import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';

class LandmarkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              Widget row = Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: LandmarkRow(landmark: landmarks[index]),
              );
              if (index < landmarks.length) {
                row = Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    children: [
                      row,
                      if (index < landmarks.length - 1)
                        Divider(
                          height: 0,
                        ),
                    ],
                  ),
                );
              }
              if (index >= 0) {
                row = Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: row,
                );
              }
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: row,
                onTap: () {
                  UriRouteManager.of(context).pushUri(Uri.parse('/landmark/${landmarks[index].id}'));
                },
              );
            },
            childCount: landmarks.length,
          ),
        ),
      ],
    );
  }
}
