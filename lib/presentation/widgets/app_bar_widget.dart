import 'package:flutter/material.dart';

class HasimoAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HasimoAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Image.asset('assets/images/app_bar_icon.png'),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: const [
              Text(
                'Welcome,',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'Martin',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
