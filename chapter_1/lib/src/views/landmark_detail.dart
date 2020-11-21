import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/widgets/circle_image.dart';
import 'package:landmarks/src/widgets/landmark_information.dart';

class LandmarkDetail extends StatelessWidget {
  final int id;

  const LandmarkDetail({Key key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color(0x00000000),
      ),
      child: SafeArea(
        child: Builder(
          builder: (context) {
            final landmark = context.select(
                (LandmarksBloc bloc) => bloc.state.firstWhere((element) => element.id == id, orElse: () => null));
            return Column(
              children: [
                SizedBox(
                  height: 300,
                  child: Placeholder(),
                ),
                Transform.translate(
                  offset: Offset(0, -150),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: CircleImage(
                          imageName: landmark.imageName,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: LandmarkInformation(landmark: landmark),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
