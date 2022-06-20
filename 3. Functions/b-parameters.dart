// https://dart.dev/guides/language/language-tour#parameters

void main() {
  print('\n--- Named parameters ---');
  // A function can have any number of required positional parameters.
  // These can be followed either by named parameters or by optional positional
  // parameters (but not both).

  void enableFlags({bool? bold, bool? hidden}) {
    print(bold);
    print(hidden);
  }

  enableFlags(hidden: false);
  enableFlags(bold: true, hidden: false);
  enableFlags(hidden: false, bold: true);

  print('\n--- Named parameters required ---');
  void enableFlags2({bool? bold, required bool hidden}) {
    print(bold);
    print(hidden);
  }

  enableFlags2(hidden: false);
  // enableFlags2(bold: true);

  print('\n--- Optional positional parameters ---');
  // Wrapping a set of function parameters in [] marks them as optional
  // positional parameters:

  String say(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

  print(say('Bob', 'Howdy'));
  print(say('Bob', 'Howdy', 'smoke signal'));

  print('\n--- Default parameter values ---');
  // Your function can use = to define default values for optional parameters,
  // both named and positional.
  // The default values must be compile-time constants.
  // If no default value is provided, the default value is null.

  // Here’s an example of setting default values for named parameters:
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags3({bool bold = false, bool hidden = false}) {
    print(bold);
    print(hidden);
  }

  // bold will be true; hidden will be false.
  enableFlags3(bold: true);

  // The next example shows how to set default values for positional parameters:

  String say2(String from, String msg, [String device = 'carrier pigeon']) {
    var result = '$from says $msg with a $device';
    return result;
  }

  print(say2('Bob', 'Howdy'));

  print('\n--- lists or maps as default values ---');
  // You can also pass lists or maps as default values.
  // The following example defines a function, doStuff(), that specifies a
  // default list for the list parameter and a default map for the gifts parameter.

  void doStuff(
      {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
    print('list:  $list');
    print('gifts: $gifts');
  }

  doStuff();
}
