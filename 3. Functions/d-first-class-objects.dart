void printElement(int element) {
  print(element);
}

void sayHello() {
  print('hello');
}

void doSomething(f) {
  // print(f);
  f();
}

// You can pass a function as a parameter to another function. For example:
void main() {
  print('--- function as a parameter ---');
  var list = [1, 2, 3];

  // Pass printElement as a parameter.
  list.forEach(printElement);

  print('\n--- assign a function to a variable ---');
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  print(loudify('hello'));

  // print(printElement);
  // print(loudify);
  // doSomething(123);
  // doSomething(sayHello);
}
