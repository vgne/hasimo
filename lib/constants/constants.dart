import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFE8E5DD);
const kPrimaryLightColor = Color(0xFFF1E6FF);
const kPrimaryColor = Color(0XFFC24827);

const Map<int, Color> kMaterialBackgroundColorCodes = {
  50: Color(0xFF0f0e0a),
  100: Color(0xFF1e1c15),
  200: Color(0xFF3d3829),
  300: Color(0xFF5b533e),
  400: Color(0xFF796f53),
  500: Color(0xFF988b67),
  600: Color(0xFFaca286),
  700: Color(0xFFc1b9a4),
  800: Color(0xFFd6d1c2),
  890: Color(0xFFE8E5DD),
  900: Color(0xFFeae8e1),
};

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFFCfcFC),
  labelText: 'Enter a value',
  floatingLabelStyle:
      TextStyle(color: Colors.black54, backgroundColor: Color(0xFFFCfcFC)),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
);
