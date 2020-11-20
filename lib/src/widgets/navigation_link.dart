import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationLink extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const NavigationLink({Key key, @required this.child, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: child),
                Icon(
                  CupertinoIcons.forward,
                  color: CupertinoColors.systemGrey2,
                )
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
