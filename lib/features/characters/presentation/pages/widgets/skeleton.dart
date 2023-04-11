import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final BoxShape? shape;
  final Color? baseColor;
  final Color? highlightColor;
  final double? height;
  final double? width;

  const Skeleton({
    Key? key,
    this.shape,
    this.baseColor,
    this.height,
    this.width,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Colors.grey[200]!,
      highlightColor: highlightColor ?? Colors.white,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: shape ?? BoxShape.rectangle,
          color: Colors.black38,
        ),
      ),
    );
  }

  static Widget card({
    double? height,
    double? width,
    Color? baseColor,
    Color? highlightColor,
    EdgeInsetsGeometry? margin,
  }) {
    return Builder(
      builder: (context) {
        final theme = Theme.of(context);

        return SizedBox(
          height: height,
          width: width,
          child: Card(
            margin: margin,
            clipBehavior: Clip.antiAlias,
            child: Skeleton(
              baseColor: baseColor ?? theme.cardColor,
              highlightColor: highlightColor ?? theme.scaffoldBackgroundColor,
            ),
          ),
        );
      },
    );
  }
}
