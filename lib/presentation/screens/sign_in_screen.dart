import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/authentication/auth_bloc.dart';
import '../../constants/constants.dart';
import 'package:email_validator/email_validator.dart';
import '../screens/search_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  static const String screenID = 'signin_screen';
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login page'),
      // ),
      backgroundColor: kBackgroundColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
           // Navigating to the dashboard screen if the user is authenticated
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const SearchScreen()));
          }
          if (state is AuthError) {
            // Showing the error message if the user has entered invalid credentials
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Loading) {
              // Showing the loading indicator while the user is signing in
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is UnAuthenticated) {
              // Showing the sign in form if the user is not authenticated
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 200.0,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/login_icon.png',
                                height: 20.0),
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
                        Center(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  //textAlign: TextAlign.center,
                                  decoration: kTextFieldDecoration.copyWith(
                                      labelText: 'Enter your email'),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return value != null &&
                                            !EmailValidator.validate(value)
                                        ? 'Please, enter a valid email'
                                        : null;
                                  },
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: kTextFieldDecoration.copyWith(
                                      labelText: 'Enter your password'),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    return value != null && value.length < 6
                                        ? "Enter min. 6 characters"
                                        : null;
                                  },
                                ),
                                const SizedBox(
                                  height: 24.0,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    _authenticateWithEmailAndPassword(context);
                                  },
                                  child: const Text(
                                    'Sign in',
                                    style: TextStyle(
                                        fontFamily: 'Circle',
                                        fontWeight: FontWeight.w600),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffC24827),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 18),
                                    // textStyle: const TextStyle(
                                    //     fontSize: 30, fontWeight: FontWeight.bold)
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      'Don\'t have an account?',
                                      style: TextStyle(
                                          fontFamily: 'Circe', fontSize: 16.0),
                                    ),
                                    TextButton(
                                      child: const Text('Sign up'),
                                      style: TextButton.styleFrom(
                                        primary: Colors.blue,
                                        textStyle: const TextStyle(
                                          fontFamily: 'Circe',
                                        ),
                                      ),
                                      onPressed: () {
                                        print('hello');
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          'Or sign in with:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Circe', fontWeight: FontWeight.w400),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                _authenticateWithGoogle(context);
                              },
                              icon: Image.asset(
                                'assets/images/google_icon.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                //  _authenticateWithGoogle(context);
                              },
                              icon: Image.asset(
                                'assets/images/facebook_icon.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                //  _authenticateWithGoogle(context);
                              },
                              icon: Image.asset(
                                'assets/images/twitter_icon.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                //  _authenticateWithGoogle(context);
                              },
                              icon: Image.asset(
                                'assets/images/apple_icon.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            } //state Unauth
            return Container();
          },
        ),
      ),
    );
  }

  void _authenticateWithEmailAndPassword(context) {
    if (_formKey.currentState!.validate()) {
      // If email is valid adding new Event [SignInRequested].
      BlocProvider.of<AuthBloc>(context).add(
        SignInRequested(_emailController.text, _passwordController.text),
      );
    }
  }

  void _authenticateWithGoogle(context) {
    BlocProvider.of<AuthBloc>(context).add(
      GoogleSignInRequested(),
    );
  }
}
