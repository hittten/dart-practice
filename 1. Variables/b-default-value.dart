// https://dart.dev/guides/language/language-tour#default-value

void main() {
  // default value
  // Uninitialized variables that have a nullable type have an initial value of null.
  print('--- default value ---');
  int? lineCount;
  assert(lineCount == null);
  print(lineCount);

  // Note: Production code ignores the assert() call.
  // During development, on the other hand, assert(condition) throws an exception if condition is false.
  // For details, see https://dart.dev/guides/language/language-tour#assert.

  // You don’t have to initialize a local variable where it’s declared,
  // but you do need to assign it a value before it’s used.
  // For example, the following code is valid because Dart can detect that lineCount is non-null by the time it’s passed to print():
  int lineCount2;
  if (true) {
    lineCount2 = countLines();
  } else {
    lineCount2 = 0;
  }

  print(lineCount2);
}

int countLines() {
  return 20;
}
