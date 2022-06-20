// https://dart.dev/guides/language/language-tour#variables

void main() {
  // initializing
  print('--- initializing ---');
  var name = 'Bob';
  print(name);
  name = "John";
  print(name);

  var isMobile = true;
  // isMobile = '';

  // If an object isn’t restricted to a single type, specify the Object type
  // (or dynamic if necessary).
  print('\n--- dynamic ---');
  Object something = 'Bob';
  something = true;
  something = 123;
  print(something);

  dynamic variable = 'something';
  variable = 123;
  variable = true;
  print(variable);

  print('\n--- declare type ---');
  // with type
  String lastName = 'Marley';
  // lastName = true;
  int myInt = 123;
  bool myBoolean = false;
  print(lastName);
  print(myInt);
  print(myBoolean);

  // redefining
  // var name = 'Peter';
}
