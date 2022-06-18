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

class MyInfo {
  final String myName;

  MyInfo(this.myName);
}

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
  // final : fianl can be set only once - run time constant (앱이 실행 된 후)
  // const : compile-time constant

  const int myAge = 17;
  final time = DateTime.now();

  print(myAge);
  print(time);

  MyInfo p1 = MyInfo('real Name');
  print(p1.myName);
}
