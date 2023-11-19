// ignore_for_file: deprecated_member_use

library universal_picture;

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UniversalPicture extends StatelessWidget {
  final dynamic source;
  final double? width, height;
  final BoxFit? fit;
  final Color? color;

  const UniversalPicture(
      {super.key,
      required this.source,
      this.width,
      this.height,
      this.fit,
      this.color});

  @override
  Widget build(BuildContext context) {
    if (source == null || source == '') return Container();

    if (source is File) {
      return Image.file(
        source,
        key: key,
        fit: fit,
        color: color,
        width: width,
        height: height,
      );
    } else if (source is Uint8List) {
      return Image.memory(
        source,
        fit: fit,
        color: color,
        width: width,
        height: height,
        key: key,
      );
    } else if (source.endsWith('.svg')) {
      return SvgPicture.asset(
        source,
        key: key,
        fit: fit ?? BoxFit.contain,
        width: width,
        height: height,
        color: color,
      );
    } else if (Uri.tryParse(source)?.hasAbsolutePath ?? false) {
      return Image.network(
        source,
        key: key,
        fit: fit,
        color: color,
        width: width,
        height: height,
      );
    } else {
      return Image.asset(
        source,
        fit: fit,
        color: color,
        width: width,
        key: key,
        height: height,
      );
    }
  }
}
