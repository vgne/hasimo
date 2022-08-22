import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class MetricsScreen extends StatefulWidget {
  const MetricsScreen({Key? key}) : super(key: key);

  @override
  State<MetricsScreen> createState() => _MetricsScreenState();
}

List<String> selectedChoices = [];

class _MetricsScreenState extends State<MetricsScreen> {
  String dropdownValue = 'Greater than';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Metrics',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //centerTitle: false,
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Metrics',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 9.0,
                ),
                const MultiSelectChip(
                  metricsList: metricsList,
                ),
                const SizedBox(
                  height: 18.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                if (selectedChoices.contains('Ev/EBITDA'))
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Ev/EBITDA',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                //  contentPadding: EdgeInsets.all(0.0),
                              ),
                              isExpanded: true,
                              value: dropdownValue,
                              iconEnabledColor: kChipColor,
                              items: <String>[
                                'Greater than',
                                'Less than',
                                'Equals',
                                'Between',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          // const Text(' - '),
                          // const Expanded(
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       filled: true,
                          //       fillColor: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const Divider(),
                    ],
                  ),
                if (selectedChoices.contains('P/E')) //Price/Earnings
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Price/Earnings',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                //  contentPadding: EdgeInsets.all(0.0),
                              ),
                              isExpanded: true,
                              value: dropdownValue,
                              iconEnabledColor: kChipColor,
                              items: <String>[
                                'Greater than',
                                'Less than',
                                'Equals',
                                'Between',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          // const Text(' - '),
                          // const Expanded(
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       filled: true,
                          //       fillColor: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const Divider(),
                    ],
                  ),
                if (selectedChoices.contains('P/B')) //Price/Book
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Price/Book ratio',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                //  contentPadding: EdgeInsets.all(0.0),
                              ),
                              isExpanded: true,
                              value: dropdownValue,
                              iconEnabledColor: kChipColor,
                              items: <String>[
                                'Greater than',
                                'Less than',
                                'Equals',
                                'Between',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          // const Text(' - '),
                          // const Expanded(
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       filled: true,
                          //       fillColor: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const Divider(),
                    ],
                  ),
                if (selectedChoices.contains('FCF Yield')) //FCF Yield
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'FCF Yield',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: DropdownButtonFormField(
                              decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                //  contentPadding: EdgeInsets.all(0.0),
                              ),
                              isExpanded: true,
                              value: dropdownValue,
                              iconEnabledColor: kChipColor,
                              items: <String>[
                                'Greater than',
                                'Less than',
                                'Equals',
                                'Between',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 2.0,
                          ),
                          const Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                          // const Text(' - '),
                          // const Expanded(
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       border: InputBorder.none,
                          //       filled: true,
                          //       fillColor: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const Divider(),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const List<String> metricsList = [
  "All metrics",
  "Ev/EBITDA",
  "P/E",
  "P/B",
  "FCF Yield",
  "Dividend Yield",
  "ROIC",
  "ROE",
  "Net Debt/EBITDA",
];

class MultiSelectChip extends StatefulWidget {
  // const MultiSelectChip({Key? key}) : super(key: key);
  final List<String> metricsList;
  // final Function(List<String>) onSelectionChanged;
  const MultiSelectChip(
      {required this.metricsList,
      //    required this.onSelectionChanged,
      Key? key})
      : super(key: key);

  @override
  State<MultiSelectChip> createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  //String selectedChoice = "";
  Color labelColor = kChipColor;
  // this function will build and return the choice list
  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.metricsList) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          labelStyle: TextStyle(
              color:
                  selectedChoices.contains(item) ? Colors.white : kChipColor),
          backgroundColor: kBackgroundColor,
          side: const BorderSide(width: 1.0, color: kChipColor),
          selected: selectedChoices.contains(item),
          selectedColor: kChipColor,
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              //print(item.toString() + " " + selected.toString());
              print(selectedChoices.contains('Ev/EBITDA'));
              //  widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    }
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
