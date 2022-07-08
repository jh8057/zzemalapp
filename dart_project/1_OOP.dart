void main() {
  Idol aespa = Idol('winter', ['winter', 'karina']);

  print(aespa.name);
  print(aespa.member);
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
