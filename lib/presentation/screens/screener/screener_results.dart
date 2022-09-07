import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';
import 'package:hasimo/data/screener_result_data.dart';
import 'package:hasimo/models/screener_result_models.dart';
import '../../widgets/scrollable_widget.dart';

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
            ScrollableWidget(child: buildDataTable()),
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

  Widget buildDataTable() {
    final columns = ['Ticker', 'M cap, \$', '2020', '2021', '2022'];

    return DataTable(
      columnSpacing: 24.0,
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(valuation),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<ScreenerResult> valuations) =>
      valuations.map((ScreenerResult valuation) {
        final cells = [
          valuation.tickerName,
          valuation.marketCap,
          valuation.firstYear,
          valuation.secondYear,
          valuation.thirdYear
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      valuations.sort((ticker1, ticker2) =>
          compareString(ascending, ticker1.tickerName, ticker2.tickerName));
    }
    // else if (columnIndex == 1) {
    //   valuations.sort((marketCap1, marketCap2) =>
    //       compareString(ascending, marketCap1.marketCap, marketCap2.marketCap));
    // }
    //  else if (columnIndex == 2) {
    //   users.sort((user1, user2) =>
    //       compareString(ascending, '${user1.age}', '${user2.age}'));
    // }

    setState(() {
      sortColumnIndex = columnIndex;
      isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
