import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';
import 'package:hasimo/presentation/widgets/app_bar_widget.dart';

class ScreenerScreen extends StatelessWidget {
  const ScreenerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HasimoAppBar(),
      backgroundColor: kBackgroundColor,
      body: Center(
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
                  ImageIcon(
                    AssetImage('screener_icon.png'),
                    color: kPrimaryColor,
                    size: 29,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Screener',
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
            ],
          ),
        ),
      ),
    );
  }
}
