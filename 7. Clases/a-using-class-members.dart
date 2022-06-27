// https://dart.dev/guides/language/language-tour#using-class-members

import 'dart:math';

class Point {
 double x;
 double y;

  Point(this.x, this.y);
  // Point(double x, double y) {
  //   this.x = x;
  //   this.y = y;
  // }

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var p = Point(2, 2);

  // Get the value of y.
  assert(p.y == 2);

  // Invoke distanceTo() on p.
  double distance = p.distanceTo(Point(4, 4));

  print('distance: $distance');

  // var a = p?.y;
}
