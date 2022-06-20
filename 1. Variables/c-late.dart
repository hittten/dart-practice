// https://dart.dev/guides/language/language-tour#late-variables

void main() {
  print('--- late value ---');
  late String description;
  myFun() {
    description = 'hello description';
  }

  myFun();

  print(description);

  // In the following example, if the temperature variable is never used,
  // then the expensive _readThermometer() function is never called:
  // This is the program's only call to readThermometer().
  late String temperature = readThermometer(); // Lazily initialized.
  // print(temperature);
}

String readThermometer() {
  print('run readThermometer');
  return '10';
}
