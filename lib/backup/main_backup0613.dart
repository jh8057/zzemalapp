import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../ScreenA.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'zzemalApp',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHome(),
        '/A': (context) => const ScreenA(),
      },
    );
  }
}

class MyHome extends StatefulWidget {
  //It's a good practice to expose the ability to provide a key when creating public widgets.
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Start'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 50)),
            const Center(
              child: Image(
                image: AssetImage('assets/app.gif'),
                width: 170,
                height: 190,
              ),
            ),
            Form(
                child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.teal,
                      inputDecorationTheme: const InputDecorationTheme(
                        labelStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: controller,
                            decoration: const InputDecoration(
                                labelText: 'Enter "dice"'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextField(
                            controller: controller2,
                            decoration:
                                const InputDecoration(labelText: 'Enter PW'),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ButtonTheme(
                            minWidth: 100,
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                judgeUser(controller, controller2);
                              },
                              child: const Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          ),
                          const MySnackBar(),
                          const MyToastBtn(),
                          const MyNavigator()
                        ],
                      ),
                    )))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/rainbowface.jpg'),
              ),
              accountName: const Text('zzemal'),
              accountEmail: const Text('luckysymbol13@gmail.com'),
              onDetailsPressed: () {
                print('arrow click');
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                flutterToast('Home clicked!');
              },
              trailing: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('Show me'),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text('Hello'),
              backgroundColor: Color.fromARGB(255, 31, 58, 11),
              action: SnackBarAction(
                  label: 'More',
                  onPressed: () {
                    flutterToast('Clicked More!');
                  }),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.teal, width: 5)),
            ),
          );
        },
      ),
    );
  }
}

class MyToastBtn extends StatelessWidget {
  const MyToastBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('Toast'),
        onPressed: () {
          flutterToast('Toast Msg');
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('Go First Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
                child: const Text('Go Third Page'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const MyContainer()));
                }),
            TextButton(
                child: const Text('Go ScreenA Page'),
                onPressed: () {
                  Navigator.pushNamed(context, '/A');
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => const ScreenA()));
                }),
          ],
        ),
      ),
    );
  }
}

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: const Text('Go Second Page'),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return const SecondPage();
          }));
        },
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(20),
              child: const Text('Hello Container'),
            ),
            TextButton(
              child: const Text('Go Back Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

void flutterToast(msg) {
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}

void judgeUser(controller, controller2) {
  if (controller.text == 'dice' && controller2.text == '1234') {
    print('You are my User');
  }
}
