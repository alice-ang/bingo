import 'package:flutter/material.dart';
import 'package:bingo/widgets/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Column(
                children: [
                  const Text(
                    'Foggy Goggles',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Lottie.network(
                          height: 160,
                          animate: false,
                          'https://assets5.lottiefiles.com/packages/lf20_6aYlBl.json',
                        ),
                      ),
                    ],
                  ),
                ],
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
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: TextField(
                  controller: nameController,
                  cursorColor: Colors.orange,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 12, bottom: 12)),
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
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: TextField(
                  cursorColor: Colors.orange,
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
              const Padding(padding: EdgeInsets.only(top: 12, bottom: 12)),
              const Text(
                'Or continue with',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    NeuButton(
                      color: Colors.white,
                      icon: const Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.black,
                      ),
                      size: 50,
                      shape: BoxShape.circle,
                      onPressed: () {
                        print('apple');
                      },
                    ),
                    NeuButton(
                      color: Colors.white,
                      icon: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      size: 50,
                      shape: BoxShape.circle,
                      onPressed: () {
                        print('google');
                      },
                    ),
                    NeuButton(
                      color: Colors.white,
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                      size: 50,
                      shape: BoxShape.circle,
                      onPressed: () {
                        print('facebook');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
