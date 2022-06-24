import 'dart:math';

List<int> lottoNum() {
  var random = Random();
  List<int> lottoList = [];
  var num;

  // for (int i = 0; i < 6; i++) {
  //   num = random.nextInt(45) + 1;
  //   lottoList.add(num);
  // }
  int i = 0;
  while (i < 6) {
    num = random.nextInt(45) + 1;
    lottoList.add(num);
    i++;
  }
  return lottoList;
}

void main() {
  List<int> result = lottoNum();
  List<int> mylotto = lottoNum();
  print(result);
  print(mylotto);

  checkResult(result, mylotto);
}

void checkResult(arr1, arr2) {
  int match = 0;
  for (int i = 0; i < arr1.length; i++) {
    for (int myNum in arr2) {
      if (arr1[i] == myNum) {
        match++;
      }
    }
  }
  print('result : $match');
}
