// https://dart.dev/guides/language/language-tour#numbers

void main() {
  print('--- numbers ---');
  var x = 1;
  var hex = 0xDEADBEEF;
  print(x);
  print(hex);
  // assert(x is int);
  // assert(x is num);

  var y = 1.1;
  var exponents = 1.42e5;
  print(y);
  print(exponents);
  // assert(y is double);
  // assert(y is num);

  num c = 1; // x can have both int and double values
  c += 2.5;
  // assert(c is int);
  // assert(c is double);
  // assert(c is num);

  double z = 1; // Equivalent to double z = 1.0.
  // assert(z is int);
  // assert(z is double);
  // assert(z is num);

  // Here’s how you turn a string into a number, or vice versa:

// String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}
