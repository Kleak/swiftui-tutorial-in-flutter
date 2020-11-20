import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/views/landmark_detail.dart';
import 'package:landmarks/src/views/landmarks.dart';

class LandmarksApp extends StatefulWidget {
  @override
  _LandmarksAppState createState() => _LandmarksAppState();
}

class _LandmarksAppState extends State<LandmarksApp> {
  final routerDelegate = UriRouterDelegate(
    routes: {
      RegExp(r'^/$'): (_) => CupertinoPage(title: 'Landmarks', child: Landmarks()),
      RegExp(r'^/landmark/([0-9]+)$'): (routeInformation) => CupertinoPage(
            child: LandmarkDetail(
              landmark: landmarks.firstWhere(
                (element) => element.id == int.tryParse(routeInformation.match.group(1)),
              ),
            ),
          ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Landmarks',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        textTheme: CupertinoTextThemeData(),
      ),
      routeInformationParser: UriRouteInformationParser(),
      routerDelegate: routerDelegate,
    );
  }
}
