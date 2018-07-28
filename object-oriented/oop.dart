void main(List<String> args) {
  var person = new Person();

  person.firstName = 'Didi';
  
  person.printName();
}

class Person {
  String firstName;

  printName() {
    print(firstName);
  }
}