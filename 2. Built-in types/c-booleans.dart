// https://dart.dev/guides/language/language-tour#booleans
void main() {
  // To represent boolean values, Dart has a type named bool.
// Only two objects have type bool: the boolean literals true and false,
// which are both compile-time constants.

// Dart’s type safety means that you can’t use code like if (nonbooleanValue) or
// assert (nonbooleanValue). Instead, explicitly check for values, like this:

// Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}
