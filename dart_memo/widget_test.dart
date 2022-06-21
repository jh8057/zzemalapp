import 'dart:io';

void main() {
  showData();
}

//  async 는 대괄호 앞에
void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = 'start Work';
  print(info1);
}

// 데이터 타입에 Future를 선언할 수 있다. - 이를 통해 받아올 데이터가 무엇인지도 미리 선언,확인 가능
Future<String> accessData() async {
  String account = '';

  Duration time = const Duration(seconds: 3);
  if (time.inSeconds > 2) {
    //js- setTimeout
    await Future.delayed(time, (() {
      String info2 = 'wait... Work';
      account = '13000';
      print(info2);
    }));
  } else {
    String info2 = 'fast access Work';
    print(info2);
  }
  return account;
}

void fetchData(String account) {
  String info3 = 'fetch Work - price : $account';
  print(info3);
}
