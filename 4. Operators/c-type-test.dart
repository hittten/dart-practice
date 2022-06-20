// https://dart.dev/guides/language/language-tour#type-test-operators

class Person {
  String firstName = '';
}

void main() {
  // The as, is, and is! operators are handy for checking types at runtime.

  // Operator	    Meaning
  //      as         Typecast (also used to specify library prefixes)
  //      is         True if the object has the specified type
  //      is!        True if the object doesn’t have the specified type
  //      The        result of obj is T is true if obj implements the interface specified by T. For example, obj is Object? is always true.

  // Use the as operator to cast an object to a particular type if and only if
  // you are sure that the object is of that type. Example:

  Object employee = {};
  // var employee = new Person();

  // employee.firstName = 'Bob';
  // (employee as Person).firstName = 'Bob';
  // If you aren’t sure that the object is of type T, then use is T to check the type before using the object.

  // if (employee is Person) {
  //   // Type check
  //   employee.firstName = 'Bob';
  // } else {
  //   print('employee is not a Person');
  // }

  print(employee);
  // print(employee.firstName);

  // Note: The code isn’t equivalent. If employee is null or not a Person, the first example throws an exception; the second does nothing.
}
