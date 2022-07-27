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

class Regions {
  final int id;
  final String code;
  final String region;

  Regions({
    required this.id,
    required this.code,
    required this.region,
  });
}

final List<Regions> kRegions = [
  Regions(id: 1, code: 'US', region: 'United States'),
  Regions(id: 2, code: 'AU', region: 'Australia'),
  Regions(id: 3, code: 'UK', region: 'United Kingdom'),
  Regions(id: 4, code: 'CA', region: 'Canada'),
  Regions(id: 5, code: 'IN', region: 'India'),
  Regions(id: 6, code: 'CN', region: 'China'),
  Regions(id: 7, code: 'AR', region: 'Argentina'),
  Regions(id: 8, code: 'AT', region: 'Austria'),
  Regions(id: 9, code: 'BH', region: 'Bahrain'),
  Regions(id: 10, code: 'BD', region: 'Bangladesh'),
  Regions(id: 11, code: 'BE', region: 'Belgium'),
  Regions(id: 12, code: 'BM', region: 'Bermuda'),
  Regions(id: 13, code: 'BW', region: 'Botswana'),
  Regions(id: 14, code: 'BR', region: 'Brazil'),
  Regions(id: 15, code: 'BG', region: 'Bulgaria'),
  Regions(id: 16, code: 'CL', region: 'Chile'),
  Regions(id: 17, code: 'CO', region: 'Colombia'),
  Regions(id: 18, code: 'HR', region: 'Croatia'),
  Regions(id: 19, code: 'CY', region: 'Cyprus'),
  Regions(id: 20, code: 'CZ', region: 'Czech Republic'),
  Regions(id: 21, code: 'DK', region: 'Denmark'),
  Regions(id: 22, code: 'EG', region: 'Egypt'),
  Regions(id: 23, code: 'EE', region: 'Estonia'),
  Regions(id: 24, code: 'FI', region: 'Finland'),
  Regions(id: 25, code: 'FR', region: 'France'),
  Regions(id: 26, code: 'DE', region: 'Germany'),
  Regions(id: 27, code: 'GH', region: 'Ghana'),
  Regions(id: 28, code: 'GR', region: 'Greece'),
  Regions(id: 29, code: 'HK', region: 'Hong Kong'),
  Regions(id: 30, code: 'HU', region: 'Hungary'),
  Regions(id: 31, code: 'IS', region: 'Iceland'),
  Regions(id: 32, code: 'ID', region: 'Indonesia'),
  Regions(id: 33, code: 'IE', region: 'Ireland'),
  Regions(id: 34, code: 'IL', region: 'Israel'),
  Regions(id: 35, code: 'IT', region: 'Italy'),
  Regions(id: 36, code: 'CI', region: 'Ivory Coast'),
  Regions(id: 37, code: 'JM', region: 'Jamaica'),
  Regions(id: 38, code: 'JP', region: 'Japan'),
  Regions(id: 39, code: 'JO', region: 'Jordan'),
  Regions(id: 40, code: 'KE', region: 'Kenya'),
  Regions(id: 41, code: 'KW', region: 'Kuwait'),
  Regions(id: 42, code: 'LV', region: 'Latvia'),
  Regions(id: 43, code: 'LB', region: 'Lebanon'),
  Regions(id: 44, code: 'LT', region: 'Lithuania'),
  Regions(id: 45, code: 'LU', region: 'Luxembourg'),
  Regions(id: 46, code: 'MY', region: 'Malaysia'),
  Regions(id: 47, code: 'MT', region: 'Malta'),
  Regions(id: 48, code: 'MU', region: 'Mauritius'),
  Regions(id: 49, code: 'MX', region: 'Mexico'),
  Regions(id: 50, code: 'FM', region: 'Morocco'),
  Regions(id: 51, code: 'NA', region: 'Namibia'),
  Regions(id: 52, code: 'NL', region: 'Netherlands'),
  Regions(id: 53, code: 'NZ', region: 'New Zealand'),
  Regions(id: 54, code: 'NG', region: 'Nigeria'),
  Regions(id: 55, code: 'NO', region: 'Norway'),
  Regions(id: 56, code: 'OM', region: 'Oman'),
  Regions(id: 57, code: 'PK', region: 'Pakistan'),
  Regions(id: 58, code: 'PS', region: 'Palestinian Authority'),
  Regions(id: 59, code: 'PE', region: 'Peru'),
  Regions(id: 60, code: 'PH', region: 'Philippines'),
  Regions(id: 61, code: 'PL', region: 'Poland'),
  Regions(id: 62, code: 'PT', region: 'Portugal'),
  Regions(id: 63, code: 'QA', region: 'Qatar'),
  Regions(id: 64, code: 'RO', region: 'Romania'),
  Regions(id: 65, code: 'RU', region: 'Russia'),
  Regions(id: 66, code: 'SA', region: 'Saudi Arabia'),
  Regions(id: 67, code: 'RS', region: 'Serbia'),
  Regions(id: 68, code: 'SG', region: 'Singapore'),
  Regions(id: 69, code: 'SK', region: 'Slovakia'),
  Regions(id: 70, code: 'SI', region: 'Slovenia'),
  Regions(id: 71, code: 'ZA', region: 'South Africa'),
  Regions(id: 72, code: 'KR', region: 'South Korea'),
  Regions(id: 73, code: 'ES', region: 'Spain'),
  Regions(id: 74, code: 'LK', region: 'Sri Lanka'),
  Regions(id: 75, code: 'SE', region: 'Sweden'),
  Regions(id: 76, code: 'CH', region: 'Switzerland'),
  Regions(id: 77, code: 'TW', region: 'Taiwan'),
  Regions(id: 78, code: 'TZ', region: 'Tanzania'),
  Regions(id: 79, code: 'TH', region: 'Thailand'),
  Regions(id: 80, code: 'TT', region: 'Trinidad and Tobago'),
  Regions(id: 81, code: 'TN', region: 'Tunisia'),
  Regions(id: 82, code: 'TR', region: 'Turkey'),
  Regions(id: 83, code: 'UG', region: 'Uganda'),
  Regions(id: 84, code: 'UA', region: 'Ukraine'),
  Regions(id: 85, code: 'AE', region: 'United Arab Emirates'),
  Regions(id: 86, code: 'VE', region: 'Venezuela'),
  Regions(id: 87, code: 'VN', region: 'Vietnam'),
  Regions(id: 88, code: 'ZM', region: 'Zambia'),
  Regions(id: 89, code: 'ZW', region: 'Zimbabwe'),
];

//
// * Basic Materials
// * 		Consumer Cyclical
// * 		Financial Services
// * 		Real Estate
// * 		Consumer Defensive
// * 		Healthcare
// * 		Utilities
// * 		Communication Services
// * 		Energy
// * 		Industrials
// *                Technology
// *
//
// Automobiles
// Banks
// Capital Goods
// Commercial Services
// Consumer Durables
// Consumer Services
// Diversified Financials
// Energy
// Consumer Retailing
// Food, Beverage & Tobacco
// Healthcare
// Household
// Insurance
// Materials
// Media
// Pharma & Biotech
// Real State
// Software
// Tech
// Telecom
// Transportation
// Utilities

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
