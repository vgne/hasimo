import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';
import 'package:hasimo/presentation/widgets/app_bar_widget.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet_field.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';

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

class Industries {
  final int id;
  final String industry;

  Industries({
    required this.id,
    required this.industry,
  });
}

class ScreenerScreen extends StatefulWidget {
  const ScreenerScreen({Key? key}) : super(key: key);

  @override
  State<ScreenerScreen> createState() => _ScreenerScreenState();
}

class _ScreenerScreenState extends State<ScreenerScreen> {
  static final List<Regions> _regions = [
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

  final _itemsRegions = _regions
      .map((regions) => MultiSelectItem<Regions>(regions, regions.region))
      .toList();
  List<Regions> _selectedRegions = [];

  static final List<Industries> _industries = [
    Industries(id: 1, industry: 'Basic Materials'),
    Industries(id: 2, industry: 'Consumer Cyclical'),
    Industries(id: 3, industry: 'Financial Services'),
    Industries(id: 4, industry: 'Real Estate'),
    Industries(id: 5, industry: 'Consumer Defensive'),
    Industries(id: 6, industry: 'Healthcare'),
    Industries(id: 7, industry: 'Utilities'),
    Industries(id: 8, industry: 'Communication Services'),
    Industries(id: 9, industry: 'Energy'),
    Industries(id: 10, industry: 'Industrials'),
    Industries(id: 11, industry: 'Technology'),
  ];

  final _itemsIndustries = _industries
      .map((industries) =>
          MultiSelectItem<Industries>(industries, industries.industry))
      .toList();
  List<Industries> _selectedIndustries = [];

  @override
  void initState() {
    _selectedRegions = _regions;
    _selectedIndustries = _industries;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HasimoAppBar(),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: const [
                  ImageIcon(
                    AssetImage('assets/images/screener_icon.png'),
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
              MultiSelectDialogField(
                items: _itemsRegions,
                title: const Text("Regions"),
                listType: MultiSelectListType.LIST,
                selectedColor: kChipColor,
                searchable: true,
                buttonIcon: const Icon(
                  Icons.arrow_downward,
                  color: kChipColor,
                ),
                buttonText: const Text(
                  "Select Regions",
                  style: TextStyle(
                    //color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
              _selectedRegions == null || _selectedRegions.isEmpty
                  ? Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "None selected",
                        style: TextStyle(color: Colors.black54),
                      ))
                  : Container(),
              const SizedBox(height: 50),
              //Industries
              MultiSelectBottomSheetField(
                initialChildSize: 0.4,
                listType: MultiSelectListType.CHIP,
                searchable: true,
                selectedColor: kChipColor,
                // unselectedColor: kPrimaryColor,
                selectedItemsTextStyle: const TextStyle(
                  color: Colors.white,
                ),
                buttonIcon: const Icon(
                  Icons.arrow_downward,
                  color: kChipColor,
                ),
                buttonText: const Text(
                  "Select Industries",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                title: const Text(
                  "Industries",
                  style: TextStyle(fontSize: 20),
                ),
                items: _itemsIndustries,
                onConfirm: (values) {
                  _selectedIndustries = values.whereType<Industries>().toList();
                },
                chipDisplay: MultiSelectChipDisplay(
                  onTap: (value) {
                    setState(() {
                      _selectedIndustries.remove(value);
                    });
                  },
                ),
              ),
              _selectedIndustries == null || _selectedIndustries.isEmpty
                  ? Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "None selected",
                        style: TextStyle(color: Colors.black54),
                      ))
                  : Container(),
              const SizedBox(height: 40),
              const TextField(
                readOnly: true,

                //   enabled: false,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.arrow_downward,
                    color: kChipColor,
                  ),
                  hintText: 'Select Metrics',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
