import 'package:flutter/material.dart';
import '../presentation/screens/login_screen.dart';
import '../constants/constants.dart';

class HasimoApp extends StatelessWidget {
  const HasimoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hasimo app',
      theme: ThemeData(
        primarySwatch:
            const MaterialColor(0xFFE8E5DD, kMaterialBackgroundColorCodes),
      ),
      home: LoginScreen(),
      // initialRoute: LoginScreen.screenID,
      // routes: {
      //   LoginScreen.screenID: (context) => LoginScreen()
      //   // reg_screen, main_screen
      //},
    );
  }
}
