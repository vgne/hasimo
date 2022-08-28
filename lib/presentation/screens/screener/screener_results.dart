import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';

class ScreenerResults extends StatefulWidget {
  const ScreenerResults({Key? key}) : super(key: key);

  @override
  State<ScreenerResults> createState() => _ScreenerResultsState();
}

class _ScreenerResultsState extends State<ScreenerResults> {
  @override
  Widget build(BuildContext context) {
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
          title: Text(
            'Valuation',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: kChipColor,
            ),
            tabs: <Widget>[
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
      ),
    );
  }
}
