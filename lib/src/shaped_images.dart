import 'package:flutter/material.dart';
import 'package:shaped_images/src/clippath_class.dart';

enum Shape { CIRCULAR, CURVED, ROUND }
enum ImageTye { ASSET, NETWORK }

// ignore: must_be_immutable
class ShapedImages extends StatefulWidget {
  Shape? shape;
  ImageTye? imageTye;

  @override
  _ShapedImagesState createState() => _ShapedImagesState();

  ShapedImages({@required this.shape, @required this.imageTye});
}

class _ShapedImagesState extends State<ShapedImages> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipPathClass(shape: widget.shape),
      child: widget.imageTye == ImageTye.ASSET
          ? Image.asset(
              '',
              height: 100,
              width: 100,
            )
          : Image.network(''),
    );
  }
}
