import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'zzemalApp',
      home: MyHome(),
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
                                // if(controller.text == 'dice' && controller2.text == '1234'{
                                //   Navigator.push(context,
                                //   MaterialPageRouter(buuild))
                                // })
                              },
                              child: const Icon(
                                Icons.arrow_forward,
                              ),
                            ),
                          )
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
                print('Home is Clicked');
              },
              trailing: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
