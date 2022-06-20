// https://dart.dev/guides/language/language-tour#maps

void main() {
  print('--- maps ---');
  // Here are a couple of simple Dart maps, created using map literals:

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  print(gifts);
  print(nobleGases);

  print('\n--- Map constructor ---');
  // You can create the same objects using a Map constructor:

  var gifts2 = Map<String, String>();
  gifts2['first'] = 'partridge';
  gifts2['second'] = 'turtledoves';
  gifts2['fifth'] = 'golden rings';

  var nobleGases2 = Map<int, String>();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  print(gifts2);
  print(nobleGases2);

  print('\n--- Add a new key-value pair ---');
  // Add a new key-value pair to an existing map using the subscript assignment
  // operator ([]=):

  var gifts3 = {'first': 'partridge'};
  gifts3['fourth'] = 'calling birds'; // Add a key-value pair

  // Retrieve a value from a map using the subscript operator ([]):
  var gifts4 = {'first': 'partridge'};
  assert(gifts4['first'] == 'partridge');

  // If you look for a key that isn’t in a map, you get null in return:
  var gifts5 = {'first': 'partridge'};
  assert(gifts5['fifth'] == null);

  // Use .length to get the number of key-value pairs in the map:
  var gifts6 = {'first': 'partridge'};
  gifts6['fourth'] = 'calling birds';
  assert(gifts6.length == 2);
  print(gifts3);
  print(gifts4);
  print(gifts5);
  print(gifts6);

  // To create a map that’s a compile-time constant, add const before the map literal:
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // constantMap[2] = 'Helium'; // This line will cause an error.
  // Maps support spread operators (... and ...?) and collection if and for
}
