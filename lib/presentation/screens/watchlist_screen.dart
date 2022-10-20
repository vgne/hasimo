import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.5,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0),
         // child: Image.asset('assets/images/watchlist_icon.png'),
          child: Icon(Icons.star_outlined, color: kPrimaryColor,),
        ),
        title: const Text(
          'Watchlist',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[

        ],
      ),
    );
  }
}
