import 'package:flutter/material.dart';
import 'package:shaped_images/shaped_images.dart';

class ClipPathClass extends CustomClipper<Path> {
  Shape? shape;

  ClipPathClass({required this.shape});

  @override
  Path getClip(Size size) {
    switch(shape){
      case Shape.CURVED:
        _drawCurvedShape(size);
        break;
        default:
        _drawCurvedShape(size);
        break;
    }

    return _drawCurvedShape(size);
  }



  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Path _drawCurvedShape(Size size) {
  var path = Path();
  path.lineTo(0.0, size.height );
  path.lineTo(size.width/2, size.height);

  var firstControlPoint = Offset(size.width, size.height);
  var firstPoint = Offset(size.width,0);
  path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
      firstPoint.dx, firstPoint.dy);

  path.close();

  return path;
}
