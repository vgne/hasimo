import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasimo/bloc/authentication/auth_bloc.dart';
import 'package:hasimo/data/repositories/auth_repository.dart';
import '../presentation/screens/sign_in_screen.dart';
import '../constants/constants.dart';

class HasimoApp extends StatelessWidget {
  const HasimoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: (context) => AuthBloc(
            authRepository: RepositoryProvider.of<AuthRepository>(context)),
        child: MaterialApp(
          title: 'Hasimo app',
          theme: ThemeData(
            primarySwatch:
                const MaterialColor(0xFFE8E5DD, kMaterialBackgroundColorCodes),
            fontFamily: 'Circe',
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: kBackgroundColor,
              selectedItemColor: kPrimaryColor,
              unselectedItemColor: Colors.grey,
              // selectedLabelStyle: TextStyle(color: kPrimaryColor),
              // unselectedLabelStyle: TextStyle(color: Colors.grey),
            ),
          ),
          home: const SignIn(),
          // initialRoute: LoginScreen.screenID,
          // routes: {
          //   LoginScreen.screenID: (context) => LoginScreen()
          //   // reg_screen, main_screen
          //},

        ),
      ),
    );
  }
}
