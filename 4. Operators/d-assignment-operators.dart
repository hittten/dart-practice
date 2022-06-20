// https://dart.dev/guides/language/language-tour#assignment-operators

String? a;
String? b;

void main() {
  // As you’ve already seen, you can assign values using the = operator.
  // To assign only if the assigned-to variable is null, use the ??= operator.

  var value = 'a string';
  // b = 'hello';

  // Assign value to a
  a = value;
  // Assign value to b if b is null; otherwise, b stays the same
  b ??= value;

  print(a);
  print(b);
}
