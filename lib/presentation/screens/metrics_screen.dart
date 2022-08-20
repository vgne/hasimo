import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class MetricsScreen extends StatefulWidget {
  const MetricsScreen({Key? key}) : super(key: key);

  @override
  State<MetricsScreen> createState() => _MetricsScreenState();
}

class _MetricsScreenState extends State<MetricsScreen> {
  String dropdownValue = 'Greater than';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Metrics',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //centerTitle: false,
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
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
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: kChipColor)
                            // ),
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
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18.0,
                  )
                ],
              )
            ],
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
  List<String> selectedChoices = [];
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
              print(item.toString() + " " + selected.toString());
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

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownValue = 'Greater than';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Greater than', 'Two', 'Three', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
