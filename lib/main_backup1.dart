import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'zzemalApp',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[600],
      appBar: AppBar(
        title: const Text('ZZEMAL CARD'),
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping_cart button is clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/rainbowface.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/rainbow.png'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/rainbow.png'),
                  backgroundColor: Colors.white,
                )
              ],
              accountName: const Text('zzemal'),
              accountEmail: const Text('luckysymbol13@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[800],
              ),
              title: const Text('Home'),
              onTap: () {
                print('Home is clikced');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[800],
              ),
              title: const Text('Setting'),
              onTap: () {
                print('Setting is clikced');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[800],
              ),
              title: const Text('Q&A'),
              onTap: () {
                print('Q&A is clikced');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/rainbowface.jpg'),
                    radius: 60,
                  ),
                ),
                Divider(
                  height: 60,
                  color: Colors.grey[850],
                  thickness: 0.5,
                  endIndent: 30,
                ),
                const Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'ZZEMAL',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'CHARACTOR POWER LEVEL',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  '10.0',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    flutterToast();
                  },
                  child: const Text('Toast'),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: const <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'memorize',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'using DART',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const <Widget>[
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'make Flutter',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
                Center(
                  child: CircleAvatar(
                    backgroundImage: const AssetImage('assets/heart.png'),
                    radius: 40,
                    backgroundColor: Colors.amber[600],
                  ),
                ),
                Center(
                  child: TextButton(
                    child: const Text(
                      'Hello world',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Hello world',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.teal,
                          duration: Duration(milliseconds: 1000),
                        ),
                      );
                      print('text pressed');
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text('Navigator - GO NEXT PAGE'),
                    onPressed: () {
                      print('Click navigator');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return SecondPage();
                      }));
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Flutter Toast',
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.black,
  );
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.amber[600],
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Navigator - GO NEXT PAGE'),
          onPressed: () {
            print('Click navigator');
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
