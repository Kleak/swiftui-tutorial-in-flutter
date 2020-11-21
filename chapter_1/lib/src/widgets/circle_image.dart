import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  final String imageName;

  const CircleImage({Key key, @required this.imageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: CupertinoColors.white, width: 4),
        boxShadow: [
          BoxShadow(blurRadius: 10.0, color: CupertinoColors.black.withAlpha(0xAA)),
        ],
        image: DecorationImage(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          image: AssetImage('assets/$imageName.jpg'),
        ),
      ),
    );
  }
}
