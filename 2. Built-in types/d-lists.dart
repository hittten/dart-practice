// https://dart.dev/guides/language/language-tour#lists

void main() {
  print('--- lists ---');
  var list = [1, 2, 3];

  // Note: Dart infers that list has type List<int>.
  // If you try to add non-integer objects to this list, the analyzer or runtime
  // raises an error. For more information, read about type inference.
  // https://dart.dev/guides/language/type-system#type-inference

  // list.add(true);
  list.add(4);

  print(list);
  // You can add a comma after the last item in a Dart collection literal.
  // This trailing comma doesn’t affect the collection,
  // but it can help prevent copy-paste errors.

  var list2 = [
    'Car',
    'Boat',
    'Plane',
  ];

  print(list2);

  // Lists use zero-based indexing, where 0 is the index of the first value and
  // list.length - 1 is the index of the last value.
  // You can get a list’s length using the .length property and access a list’s
  // values using the subscript operator ([]):

  var list3 = [1, 2, 3];
  assert(list3.length == 3);
  assert(list3[1] == 2);

  list3[1] = 1;
  assert(list3[1] == 1);

  // To create a list that’s a compile-time constant, add const before the list literal:

  var constantList = const [1, 2, 3];
// constantList[1] = 1; // This line will cause an error.

  print('\n--- spread operator (...) ---');
  // you can use the spread operator (...) to insert all the values of a list into another list:

  var list4 = [1, 2, 3];
  var list5 = [0, ...list4];
  assert(list5.length == 4);
  print(list5);

  print('\n--- null-aware spread operator (...?) ---');
  // If the expression to the right of the spread operator might be null,
  // you can avoid exceptions by using a null-aware spread operator (...?):

  var list6 = null;
  var list7 = [0, ...?list6];
  assert(list7.length == 1);

  print(list7);
  // For more details and examples of using the spread operator,
  // see the spread operator proposal.
  // https://github.com/dart-lang/language/blob/master/accepted/2.3/spread-collections/feature-specification.md

  print('\n--- conditionals (if) ---');
  // Dart also offers collection if and collection for, which you can use to
  // build collections using conditionals (if) and repetition (for).

  // Here’s an example of using collection if to create a list with three or four items in it:
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  print('\n--- repetition (for) ---');
  // Here’s an example of using collection for to manipulate the items of a list
  // before adding them to another list:

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
