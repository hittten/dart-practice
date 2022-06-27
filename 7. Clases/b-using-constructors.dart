// https://dart.dev/guides/language/language-tour#using-constructors

class Point {
  double? x = 0;
  double? y = 0;

  Point(double x, double y) {
    // See initializing formal parameters for a better way
    // to initialize instance variables.
    this.x = x;
    this.y = y;
  }

  Point.fromJson(Map<String, double> map) {
    this.x = map['x'];
    this.y = map['y'];
  }
}

class ImmutablePoint {
  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  print('--- constructors ---');
  var p1 = Point(2, 2);
  var p2 = Point.fromJson({'x': 1, 'y': 2});

  var p3 = new Point(2, 2);
  var p4 = new Point.fromJson({'x': 1, 'y': 2});

  printPoint(p1);
  printPoint(p2);
  printPoint(p3);
  printPoint(p4);

  print('\n--- constant constructors ---');
  var a = const ImmutablePoint(1, 1);
  var b = const ImmutablePoint(1, 1);

  // a.y = 2;

  assert(identical(a, b)); // They are the same instance!
  // printPoint(a);
  // printPoint(b);
}

printPoint(Point point) {
  print('(${point.x},${point.y})');
}
