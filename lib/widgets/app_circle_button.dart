import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
class AppCircleButton extends StatelessWidget {
  const AppCircleButton({super.key,
  required this.child,
  this.color,
  this.onTap,
  this.width=60,
  });
  final Widget child;
  final double width;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
      shape: const CircleBorder(),
      child: InkWell(onTap: onTap,child: child,),
    );
  }
}