// https://dart.dev/guides/language/language-tour#functions
// Here’s an example of implementing a function:

var _nobleGases = [
  'Gas1',
  null,
];

bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
// Although Effective Dart recommends type annotations for public APIs, the function still works if you omit the types:

isNoble2(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

void main() {
  print('--- functions ---');
  // For functions that contain just one expression, you can use a shorthand syntax:
  bool isNoble3(int atomicNumber) => _nobleGases[atomicNumber] != null;

  var result = isNoble(1);
  var result2 = isNoble2(0);
  var result3 = isNoble3(1);
  print(result);
  print(result2);
  print(result3);
}
