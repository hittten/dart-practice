// https://dart.dev/guides/language/language-tour#final-and-const

void main() {
  // If you never intend to change a variable, use final or const, either
  // instead of var or in addition to a type.
  // A final variable can be set only once;
  // a const variable is a compile-time constant.
  // (Const variables are implicitly final.)

  print('--- final ---');
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  print(name);
  print(nickname);
  // name = 'john'

  // Use const for variables that you want to be compile-time constants.
  // If the const variable is at the class level, mark it static const.
  // Where you declare the variable, set the value to a compile-time constant
  // such as a number or string literal, a const variable, or the result of
  // an arithmetic operation on constant numbers:
  print('--- const ---');

  const pressure = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * pressure; // Standard atmosphere
  print(pressure);
  print(atm);

  // The const keyword isn’t just for declaring constant variables.
  // You can also use it to create constant values, as well as to declare
  // constructors that create constant values.
  // Any variable can have a constant value.

  print('--- constant values ---');
  var foo = const [];
  final bar = const [];
  const baz = []; // Equivalent to `const []`

  // You can omit const from the initializing expression of a const declaration,
  // like for baz above. For details, see
  // https://dart.dev/guides/language/effective-dart/usage#dont-use-const-redundantly.

  foo = [1, 2, 3]; // Was const []
  // baz = [42]; // Error: Constant variables can't be assigned a value.

  // Note: Although a final object cannot be modified, its fields can be changed.
  // In comparison, a const object and its fields cannot be changed: they’re immutable.
}
