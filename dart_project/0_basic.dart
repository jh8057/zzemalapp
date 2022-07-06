enum Status {
  // 타입을 강제하고
  // 제한을 두기 위해서
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
}
