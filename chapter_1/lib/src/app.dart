import 'package:flouter/flouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/filtered_landmarks.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/bloc/show_favorite.dart';
import 'package:landmarks/src/data/landmarks.dart';
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
      RegExp(r'^/landmark/([0-9]+)$'): (routeInformation) =>
          CupertinoPage(child: LandmarkDetail(id: int.tryParse(routeInformation.match.group(1)))),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ShowOnlyFavoriteCubit()),
        BlocProvider<LandmarksBloc>(
          create: (context) => LandmarksBloc(landmarks),
        ),
        BlocProvider(
          create: (context) => FilteredLandmarksBloc(
            context.read<LandmarksBloc>(),
            context.read<ShowOnlyFavoriteCubit>(),
          ),
        ),
      ],
      child: CupertinoApp.router(
        title: 'Landmarks',
        theme: CupertinoThemeData(
          brightness: Brightness.light,
          textTheme: CupertinoTextThemeData(),
        ),
        routeInformationParser: UriRouteInformationParser(),
        routerDelegate: routerDelegate,
      ),
    );
  }
}
