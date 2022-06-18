class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class Slot<T> {
  insert(T shape) {
    print('$T shape & $shape shape');
  }
}

class Circle {}

void main() {
  String name = 'zzemal';
  int age = 20;
  bool isTrue = true;

  List<int> numbers = [1, 2, 3, 4, 5];
  var numList = List.filled(3, 0);
  print(numList);

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

  var circleSlot = Slot<Circle>();
  circleSlot.insert(Circle());

  // final vs const
  // final : fianl can be set only once
  // const : compile-time constant

  const int myAge = 17;
  final myName = <String>['zzemal'];

  // myAge = 1;
  // myName = 'T';
  print(myAge);
  print(myName);
}
