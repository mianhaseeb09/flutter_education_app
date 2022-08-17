import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? onTap;

  const CircleButton(
      {Key,key, required this.child, this.color,  this.width=60, this.onTap, })

      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      type: MaterialType.transparency,
      shape: const CircleBorder(),
      child: InkWell(
        child: child,
      ),
    );
  }
}
