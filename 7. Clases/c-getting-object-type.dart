// https://dart.dev/guides/language/language-tour#getting-an-objects-type

class Point {
  double x, y;

  Point(this.x, this.y);
}

void main() {
  var a = Point(1, 2);
  print('The type of a is ${a.runtimeType}');

  if (a.runtimeType == Point) {
    print('is a point!!!');
  }
}
