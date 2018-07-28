void main() {

  // String type
  var name = myName();

  // Dynamic type
  var work = myWork();

  var lenName = name.length;

  print('My name is $name');
  print('Im working as $work');
  print('Length of name: $lenName');
}

String myName() {
  return 'Didi Yudha';
}

myWork() {
  return 'Software Engineer';
}