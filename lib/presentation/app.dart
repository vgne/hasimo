import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasimo/bloc/authentication/auth_bloc.dart';
import 'package:hasimo/data/repositories/auth_repository.dart';
import 'package:hasimo/presentation/screens/help_center_screen.dart';
import 'package:hasimo/presentation/screens/profile_screen.dart';
import 'package:hasimo/presentation/screens/screener/metrics_screen.dart';
import 'package:hasimo/presentation/screens/screener/screener_screen.dart';
import 'package:hasimo/presentation/screens/search_screen.dart';
import '../presentation/screens/sign_in_screen.dart';
import '../presentation/screens/screener/screener_results.dart';
import '../constants/constants.dart';

class HasimoApp extends StatelessWidget {
  const HasimoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Hasimo app',
    //   theme: ThemeData(
    //     primarySwatch:
    //         const MaterialColor(0xFFE8E5DD, kMaterialBackgroundColorCodes),
    //     fontFamily: 'Circe',
    //   ),
    //   home: const SearchScreen(),
    // );
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
          ),
          home: const ProfileScreen(),
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
