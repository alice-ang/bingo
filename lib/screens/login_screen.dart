import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfff5f2d9),
      child: CircleBackground(
        childWidget: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(18),
                child: const Text(
                  'Foggy goggles',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 3),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(3, 3),
                    )
                  ],
                ),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: nameController,
                  cursorColor: Colors.yellow,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 3),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(3, 3),
                    )
                  ],
                ),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  cursorColor: Colors.yellow,
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Background color
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(top: 18),
                  ),
                  const Text('Do not have an account?'),
                  TextButton(
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
              ),
              const Text(
                'Or continue with',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Circle(color: Colors.white, size: 50),
                    Circle(color: Colors.white, size: 50),
                    Circle(color: Colors.white, size: 50),
                  ],
                ),
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus elementum quam vitae metus suscipit rutrum.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
