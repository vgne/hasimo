import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';
import 'package:hasimo/data/screener_result_data.dart';
import 'package:hasimo/models/screener_result_models.dart';

class ScreenerResults extends StatefulWidget {
  const ScreenerResults({Key? key}) : super(key: key);

  @override
  State<ScreenerResults> createState() => _ScreenerResultsState();
}

class _ScreenerResultsState extends State<ScreenerResults> {
  late List<ScreenerResult> valuation;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    valuation = List.of(valuations);
  }

  @override
  Widget build(BuildContext context) {
    final columns = ['Ticker', 'M cap, \$', '2020', '2021', '2022'];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Valuation',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                text: 'Yield',
              ),
              Tab(
                text: 'Returns',
              ),
            ],
          ),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Results',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            valuationTabs(),
            Text('Valuation'),
            Text('Yield'),
            //      Text('Returns'),
          ],
        ),
      ),
    );
  }

  valuationTabs() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Valuation',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: TabBar(
            // isScrollable: true,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: kChipColor,
            ),
            tabs: const <Widget>[
              Tab(
                child: Text(
                  'Ev/EBITDA',
                  // style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'P/E Ratio',
                ),
              ),
              Tab(
                child: Text(
                  'P/B Ratio',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
