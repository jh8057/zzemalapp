void main() {
  Idol aespa = Idol('winter', ['winter', 'karina']);

  print(aespa.name);
  print(aespa.member);

  //async
  addNum(1, 2);
}

class Idol {
  late String name;
  late List<String> member;

  Idol(this.name, this.member);
  void sayHello() {
    print('hello');
  }

  void introduce() {
    print('Our member is $member');
  }
}

void addNum(int num1, int num2) async {
  await Future.delayed(Duration(seconds: 2), () {
    print('result : $num1 + $num2 = ${num1 + num2} ');
  });
}
