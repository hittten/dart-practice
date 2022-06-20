// Every app must have a top-level main() function, which serves as the
// entrypoint to the app.
// The main() function returns void and has an optional List<String> parameter
// for arguments.

// Here’s a simple main() function:
// void main() {
//   print('Hello, World!');
// }

// Here’s an example of the main() function for a command-line app that takes arguments:

// Run the app like this: dart '.\3. functions\c-main.dart' 1 test
void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
