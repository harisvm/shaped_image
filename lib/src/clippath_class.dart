import 'package:flutter/material.dart';
import 'package:shaped_images/shaped_images.dart';



class ClipPathClass extends CustomClipper<Path> {
  Shape? shape;

  ClipPathClass({required this.shape});

  @override
  Path getClip(Size size) {
    switch (shape) {
      case Shape.SHAPE01:
        _drawShape01(size);
        break;
      case Shape.SHAPE02:
        _drawShape02(size);
        break;
      case Shape.SHAPE03:
        _drawShape03(size);
        break;
      case Shape.SHAPE04:
        _drawShape04(size);
        break;
      case Shape.SHAPE05:
        _drawShape05(size);
        break;
      case Shape.SHAPE06:
        _drawShape06(size);
        break;
      case Shape.SHAPE07:
        _drawShape07(size);
        break;
      default:
        return _drawNothing(size);
    }

    return _drawNothing(size);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Path _drawShape01(Size size) {
  Path path = Path();
  path.lineTo(0, size.height - 100);
  path.quadraticBezierTo(
      size.width / 2, size.height, size.width, size.height - 100);
  path.lineTo(size.width, 0);
  path.close();

  return path;
}

Path _drawShape02(Size size) {
  Path path = Path();
  path.lineTo(0, size.height);
  path.quadraticBezierTo(
      size.width / 2, size.height - 100, size.width, size.height);
  path.lineTo(size.width, 0);

  return path;
}

Path _drawShape03(Size size) {
  Path path = Path();
  path.lineTo(0, size.height);
  var curXPos = 0.0;
  var curYPos = size.height;
  var increment = size.width / 40;
  while (curXPos < size.width) {
    curXPos += increment;
    curYPos = curYPos == size.height ? size.height - 30 : size.height;
    path.lineTo(curXPos, curYPos);
  }
  path.lineTo(size.width, 0);

  return path;
}

Path _drawShape04(Size size) {
  var radius = 10.0;

  Path path = Path();
  path.moveTo(radius, 0.0);
  path.arcToPoint(Offset(0.0, radius),
      clockwise: true, radius: Radius.circular(radius));
  path.lineTo(0.0, size.height - radius);
  path.arcToPoint(Offset(radius, size.height),
      clockwise: true, radius: Radius.circular(radius));
  path.lineTo(size.width - radius, size.height);
  path.arcToPoint(Offset(size.width, size.height - radius),
      clockwise: true, radius: Radius.circular(radius));
  path.lineTo(size.width, radius);
  path.arcToPoint(Offset(size.width - radius, 0.0),
      clockwise: true, radius: Radius.circular(radius));
  return path;
}

Path _drawShape05(Size size) {
  Path path = Path();
  path.lineTo(size.width / 2, size.height);
  path.lineTo(size.width, 0.0);
  return path;
}

Path _drawShape06(Size size) {
  Path path = Path();
  path.lineTo(0, size.height);
  path.quadraticBezierTo(
      size.width / 4, size.height - 40, size.width / 2, size.height - 20);
  path.quadraticBezierTo(
      3 / 4 * size.width, size.height, size.width, size.height - 30);
  path.lineTo(size.width, 0);

  return path;
}

Path _drawShape07(Size size) {
  Path path = Path();
  path.lineTo(0, size.height);
  var curXPos = 0.0;
  var curYPos = size.height;
  var increment = size.width / 20;
  while (curXPos < size.width) {
    curXPos += increment;
    path.arcToPoint(Offset(curXPos, curYPos), radius: Radius.circular(5));
  }
  path.lineTo(size.width, 0);
  return path;
}

Path _drawNothing(Size size) {
  Path path = Path();
  return path;
}
