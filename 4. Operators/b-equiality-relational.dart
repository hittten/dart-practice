// https://dart.dev/guides/language/language-tour#equality-and-relational-operators

void main() {
  // The following table lists the meanings of equality and relational operators.

  // Operator   Meaning
  //    ==         Equal; see discussion below
  //    !=         Not equal
  //    >          Greater than
  //    <          Less than
  //    >=         Greater than or equal to
  //    <=         Less than or equal to

  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  String a = '2';
  int b = 2;
  assert(a != b);
}
