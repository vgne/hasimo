import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: const Text(
          'Account',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Image.asset('assets/images/profile_icon.png'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
