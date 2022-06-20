// https://dart.dev/guides/language/language-tour#arithmetic-operators

void main() {
  // Dart supports the usual arithmetic operators, as shown in the following table.
  //
  // Operator   Meaning
  //    +	         Add
  //    -	         Subtract
  //    -          expr Unary minus, also known as negation (reverse the sign of the expression)
  //    *	         Multiply
  //    /	         Divide
  //    ~/         Divide, returning an integer result
  //    %	         Get the remainder of an integer division (modulo)
  Example:
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder

  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  // Dart also supports both prefix and postfix increment and decrement operators.

  // Operator	  Meaning
  //    ++var     var = var + 1 (expression value is var + 1)
  //    var++     var = var + 1 (expression value is var)
  //    --var     var = var - 1 (expression value is var - 1)
  //    var--     var = var - 1 (expression value is var)
  // Example:

  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a AFTER b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a AFTER b gets its value.
  assert(a != b); // -1 != 0
}
