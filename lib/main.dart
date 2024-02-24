import 'package:flutter/material.dart';
import 'package:flutter_application1/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Log in'), backgroundColor: Colors.cyan),
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.yellow[200],
          //margin: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 40, bottom: 25),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Login',
                      fillColor: Colors.white60,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(bottom: 40),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white60,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  obscureText: true,
                ),
              ),
              Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    onPressed: () {
                      print('Clicked');
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ShopPage()),
                      );
                    },
                    child: const Text(
                      'Log in',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                ),
              ),
              Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                    onPressed: () {
                      print('Clicked');
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignupPage()));
                    },
                    child: const Text(
                      'Sign up',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Sign up'), backgroundColor: Colors.cyan),
      body: Center(
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.yellow[200],
          //margin: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(top: 40, bottom: 25),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Login',
                      fillColor: Colors.white60,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Container(
                width: 200,
                height: 50,
                margin: const EdgeInsets.only(bottom: 40),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white60,
                      filled: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  obscureText: true,
                ),
              ),
              Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                    onPressed: () {
                      print('Clicked');
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Log in',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                ),
              ),
              Container(
                width: 200,
                height: 50,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))),
                    onPressed: () {
                      print('Clicked');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ShopPage()),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}