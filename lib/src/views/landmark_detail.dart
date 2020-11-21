import 'package:flutter/cupertino.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:landmarks/src/widgets/circle_image.dart';
import 'package:landmarks/src/widgets/landmark_information.dart';

class LandmarkDetail extends StatelessWidget {
  final Landmark landmark;

  const LandmarkDetail({Key key, @required this.landmark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color(0x00000000),
      ),
      child: SafeArea(
        child: Column(
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
        ),
      ),
    );
  }
}
