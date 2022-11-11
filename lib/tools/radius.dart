import 'package:flutter/material.dart';

getShapeWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(width * radius),
  );
}

getBorderRadiusWidget(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.circular(width * radius);
}

getBottomBorderRadiusWidget2(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.only(
    bottomLeft: Radius.circular(width * radius),
    bottomRight: Radius.circular(width * radius),


  );
}
getBorderRadiusWidget2(BuildContext context, radius) {
  final width = MediaQuery.of(context).size.width;

  return BorderRadius.only(
    bottomLeft: Radius.circular(width * radius),
    bottomRight: Radius.circular(width * radius),
      topRight: Radius.circular(width * 0.1),
    topLeft: Radius.circular(width * 0.1),

  );
}
