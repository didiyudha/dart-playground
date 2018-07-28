void main(List<String> args) {
  var person = new Person("Didi");

  person.printName();
}

class Person {
  String firstName;

  Person(this.firstName);

  printName() {
    print(firstName);
  }
}