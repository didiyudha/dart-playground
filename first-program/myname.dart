void main() {

  // String type
  var name = myName();

  // Dynamic type
  var work = myWork();

  print('My name is $name');
  print('Im working as $work');
  print('Length of name: ${name.length}');
}

String myName() {
  return 'Didi Yudha';
}

myWork() {
  return 'Software Engineer';
}