enum Status {
  // 타입을 강제하고
  // 제한을 두기 위해서 + 나중에 생각하기 쉽게 하기 위해서
  approve,
  rejected
}

void main() {
  //null allow
  String? name = null;

  //not allow null
  String name2 = 'aa';
  print(name2!);

  List<String> nameList = ['a', 'b'];
  nameList.add('c');
  print(nameList);

  nameList.remove('a');
  print(nameList);

  Map<String, bool> dictionary = {'a': true, 'b': false};
  print(dictionary);
  dictionary.addAll({'c': true});
  print(dictionary);

  final Set<String> nameSet = {'a', 'a', 'b'};
  nameSet.add('c');
  print(nameSet);

  Status now = Status.approve;
  print(now);

  int namedParams({int x = 10, required int y}) {
    return x + y;
  }

  int result1 = namedParams(y: 20);
  print(result1);

  MyNum fun1 = add;

  int result = fun1(10, 20, 30);
  print(result);
}

//signature
typedef MyNum = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;
