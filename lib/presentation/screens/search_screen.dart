import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasimo/presentation/screens/sign_in_screen.dart';
import '../../bloc/authentication/auth_bloc.dart';
import '../../constants/constants.dart';
import '../widgets/app_bar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);
  final int _selectedTab = 2;

  @override
  Widget build(BuildContext context) {
    // Getting the user from the FirebaseAuth Instance
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: const HasimoAppBar(),
      backgroundColor: kBackgroundColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            // Navigate to the sign in screen when the user Signs Out
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const SignInScreen()),
              (route) => false,
            );
          }
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: kPrimaryColor,
                      size: 29,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26.0,
                ),
                TextFormField(
                  // controller: _emailController,
                  //textAlign: TextAlign.center,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Search company, CUSIP, ISIN, ticker',
                    suffixIcon: const Icon(
                      Icons.search,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Text(
                  'Email: \n ${user.email}',
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                user.photoURL != null
                    ? Image.network("${user.photoURL}")
                    : Container(),
                user.displayName != null
                    ? Text("${user.displayName}")
                    : Container(),
                const SizedBox(height: 16),
                ElevatedButton(
                  child: const Text('Sign Out'),
                  onPressed: () {
                    // Signing out the user
                    context.read<AuthBloc>().add(SignOutRequested());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,

        currentIndex: _selectedTab, //Search screen
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidStar),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.chartLine), label: 'Screener'),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidLightbulb),
            label: 'Ideas',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidUser),
            label: 'Profile',
          ),
        ],
        //onTap: onSelectTab,
      ),
    );
  }
}
