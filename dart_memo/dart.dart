class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  String name = 'zzemal';
  int age = 20;
  bool isTrue = true;

  List<int> numbers = [1, 2, 3, 4, 5];
  Map<String, String> myObj = {'name': 'zzemal'};

  print('name : $name');

  if (isTrue) {
    print('age : $age');
  }

  print(myObj['name']);
  print(numbers);

  // const person = new Person('class',100); // new is unnecessary
  final person = Person('class', 100);

  print(person);
  print(person.name + ' & ' + (person.age).toString());
}
