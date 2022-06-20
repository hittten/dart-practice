// https://dart.dev/guides/language/language-tour#sets

void main() {
  print('--- sets ---');
  // A set in Dart is an unordered collection of unique items.
  // Dart support for sets is provided by set literals and the Set type.

  // Here is a simple Dart set, created using a set literal:
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // halogens.add(true);
  halogens.add('new string');

  print(halogens);

  print('\n--- empty set ---');
  // To create an empty set, use {} preceded by a type argument, or assign {}
  // to a variable of type Set:

  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.
  print(names);

  print('\n--- Add items to an existing set ---');
  // Add items to an existing set using the add() or addAll() methods:

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  print(elements);

  print('\n--- compile-time constant ---');
  // To create a set that’s a compile-time constant, add const before the set literal:

  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.

  // Sets support spread operators (... and ...?) and collection
  // if and for, just like lists do
}
