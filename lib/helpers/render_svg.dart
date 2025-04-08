import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garments_niyog/config/constant.dart';

class RenderSvg extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit fit;
  RenderSvg(
      {required this.path,
      this.height,
      this.width,
      this.color,
      this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      '${Constants.svgPath}/$path.svg',
      height: height,
      width: width,
      // ignore: deprecated_member_use
      color: color,
      fit: fit,
    );
  }
}
