// https://dart.dev/guides/language/language-tour#return-values

void main() {
  // All functions return a value. If no return value is specified, the statement
  // return null; is implicitly appended to the function body.

  foo() {}
  foo2() {return 123;}

  assert(foo() == null);
  assert(foo2() == 123);

  var result = foo();
  print(result);
}
