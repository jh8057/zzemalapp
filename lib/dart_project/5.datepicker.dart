import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({Key? key}) : super(key: key);

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  final now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context); 가까운 context 내용 가져옴
    // final size = MediaQuery.of(context).size
    return Scaffold(
        appBar: AppBar(
          title: const Text('DatePicker'),
        ),
        body: Column(
          children: [
            Text(
                'day : ${selectedDate.year}.${selectedDate.month}.${selectedDate.day}'),
            Text(
                'd-day : ${DateTime(now.year, now.month, now.day).difference(selectedDate).inDays}'),
            IconButton(
                onPressed: () {
                  print('picker');
                  showCupertinoDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: Colors.white,
                            height: 300,
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.date,
                              initialDateTime: selectedDate,
                              maximumDate:
                                  DateTime(now.year, now.month, now.day),
                              onDateTimeChanged: (DateTime data) {
                                print(data);
                                setState(() {
                                  selectedDate = data;
                                });
                              },
                            ),
                          ),
                        );
                      });
                },
                icon: const Icon(Icons.cloud_circle))
          ],
        ));
  }
}
