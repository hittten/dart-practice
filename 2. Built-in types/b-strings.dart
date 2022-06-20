// https://dart.dev/guides/language/language-tour#strings

void main() {
  print('--- strings ---');
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  // You can put the value of an expression inside a string by using ${expression}.
  // If the expression is an identifier, you can skip the {}.
  // To get the string corresponding to an object,
  // Dart calls the object’s toString() method.

  print('\n--- interpolation ---');
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var inter = 'That deserves all caps. '
      '${s.toUpperCase()} is very handy!';
  print(inter);

  // You can concatenate strings using adjacent string literals or the + operator:
  print('\n--- concatenate ---');

  var s5 = 'String '
      'concatenation'
      " works even over line breaks.";

  assert(s5 ==
      'String concatenation works even over '
          'line breaks.');

  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The + operator works, as well.');

  print(s5);
  print(s6);

  // Another way to create a multi-line string: use a triple quote with either
  // single or double quotation marks:
  print('\n--- multi-line ---');
  var s7 = '''
You can create
multi-line strings like this one.
''';

  var s8 = """This is also a
multi-line string.""";

  print(s7);
  print(s8);

  // ou can create a “raw” string by prefixing it with r:
  print('\n--- raw ---');

  var s9 = r'In a raw string, not even \n gets special treatment.';
  print(s9);

  // Literal strings are compile-time constants, as long as any interpolated
  // expression is a compile-time constant that evaluates to null or a numeric,
  // string, or boolean value.

// These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

// These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
}
