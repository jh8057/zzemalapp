class Person {
  var name;
  int? age;
  String? sex;

  Person({this.name, this.age, this.sex});
}

addNumber(int num1, int num2) {
  return num1 + num2;
}

void main() {
  final p1 = Person(name: 'a', age: 40);
  final p2 = Person(name: 'b', age: 20, sex: 'woman');

  print(p1.sex);
  print(p2.sex);
  print(addNumber(1, 2));
}
