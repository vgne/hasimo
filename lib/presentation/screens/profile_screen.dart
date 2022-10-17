import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.5,
        title: const Text(
          'Account',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Image.asset('assets/images/profile_icon.png'),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: const [
                        SizedBox(height: 32.0),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                          radius: 50,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 32.0,
                        ),
                        const Text(
                          'Welcome back,',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const Text(
                          'Alesha', //TODO - add username from Firebase
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          children: const [
                            Text(
                              'alesha@hasimo.io',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 18.0),
                const Divider(),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  'Current plan',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                Row(
                  children: const [
                    Text(
                      'Starter',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 250.0,
                    ),
                    Text(
                      'Free',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 14.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      'Institutional quality data',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 14.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      'Global markets',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 14.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      '10 company reports',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Upgrade Plan to Pro',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  'Helpful links',
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                ListView(
                  shrinkWrap: true,
                  children: ListTile.divideTiles(
                    context: context,
                    tiles: [
                      ListTile(
                        title: const Text(
                          'Help Center',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // do something
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'About us',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // do something
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Terms and conditions',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // do something
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Privacy',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          // do something
                        },
                      ),
                    ],
                  ).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
