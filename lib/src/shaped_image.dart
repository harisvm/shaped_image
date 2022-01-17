import 'package:flutter/material.dart';
import 'package:shaped_image/src/clippath_class.dart';

enum ImageType { ASSET, NETWORK }
enum Shape {
  SHAPE01,
  SHAPE02,
  SHAPE03,
  SHAPE04,
  SHAPE05,
  SHAPE06,
  SHAPE07,
  CIRCULAR,
  CURVED,
  ROUND,
  TRIANGLE
}
// ignore: must_be_immutable
class ShapedImage extends StatefulWidget {
  Shape? shape;
  ImageType? imageTye;
  double? height;
  double? width;
  Color? color;
  String? path;
  Key? key;
  BoxFit? boxFit;
  AlignmentGeometry? alignmentGeometry;
  ImageErrorWidgetBuilder? imageErrorWidgetBuilder;

  @override
  _ShapedImageState createState() => _ShapedImageState();

  ShapedImage(
      {@required this.shape,
      @required this.imageTye,
      @required this.path,
      this.height,
      this.width,
      this.key,
      this.boxFit=BoxFit.cover,
      this.alignmentGeometry,
      this.imageErrorWidgetBuilder,
      this.color});
}

class _ShapedImageState extends State<ShapedImage> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathClass(shape: widget.shape),
      child: widget.imageTye == ImageType.ASSET
          ? Image.asset(
              widget.path.toString(),
              height: widget.height,
              width: widget.width,
              color: widget.color,
              key: widget.key,
              fit: widget.boxFit,
              errorBuilder: widget.imageErrorWidgetBuilder,
            )
          : Image.network(
              widget.path.toString(),
              height: widget.height,
              width: widget.width,
              color: widget.color,
              key: widget.key,
              fit: widget.boxFit,
              errorBuilder: widget.imageErrorWidgetBuilder,
            ),
    );
  }
}
