// https://dart.dev/guides/language/language-tour#anonymous-functions
// The following example defines an anonymous function with an untyped
// parameter, item. The function, invoked for each item in the list, prints a
// string that includes the value at the specified index.

void main() {
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  // https://api.dart.dev/stable/2.17.5/dart-core/Iterable/forEach.html

  // void myForEach(List list, void action(dynamic element)) {
  //   for (dynamic element in list) action(element);
  // }
  //
  // myForEach(list, (element) {
  //   print('${list.indexOf(element)}: $element');
  // });
}
