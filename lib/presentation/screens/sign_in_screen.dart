import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String screenID = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login page'),
      // ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: SizedBox(
                height: 200.0,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/login_icon.png', height: 20.0),
                const SizedBox(width: 10.0),
                const Text(
                  'Log in',
                  style: TextStyle(
                      fontFamily: 'Circe',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(labelText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Log in'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffC24827),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                // textStyle: const TextStyle(
                //     fontSize: 30, fontWeight: FontWeight.bold)
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Sign in'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff090A0C),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
                // textStyle: const TextStyle(
                //     fontSize: 30, fontWeight: FontWeight.bold)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
