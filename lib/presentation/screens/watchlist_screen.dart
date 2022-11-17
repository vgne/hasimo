import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';
import 'package:hasimo/data/watchlist_data.dart';
import 'package:hasimo/models/watchlist_model.dart';

import '../widgets/scrollable_widget.dart';

class WatchlistScreen extends StatefulWidget {
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  State<WatchlistScreen> createState() => _WatchlistScreenState();
}

class _WatchlistScreenState extends State<WatchlistScreen> {
  late List<WatchlistDataModel> watchlist;
  int? sortColumnIndex;
  bool isAscending = false;
  bool isTableList = false;
  bool isCardList = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    watchlist = List.of(watchlists);
  }

  @override
  void setState(_) {
    isCardList != isTableList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.5,
        leading: const Padding(
          padding: EdgeInsets.only(left: 18.0),
          // child: Image.asset('assets/images/watchlist_icon.png'),
          child: Icon(
            Icons.star_outlined,
            color: kPrimaryColor,
          ),
        ),
        title: const Text(
          'Watchlist',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              isTableList = true;
              isTableList = false;
            },
            icon: const Icon(Icons.menu),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                isTableList = false;
                isTableList = true;
              },
              icon: const Icon(Icons.view_agenda_outlined),
            ),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                // controller: _emailController,
                //textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Search in your watchlist',
                  suffixIcon: const Icon(
                    Icons.search,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
             // if (isTableList) ? ScrollableWidget(child: watchlistTable()) : ScrollableWidget(child: watchlistCard()),
              //buildDataTable(),
              //ScrollableWidget(child: buildDataTable()),
              ScrollableWidget(child: isTableList ? watchlistTable() : watchlistCard()),
             // ScrollableWidget(child: watchlistCard()),
            ],
          ),
        ),
      ),
    );
  }

  Widget watchlistCard() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.water_drop,
                          color: kPrimaryColor,
                        ),
                        Text(
                          ' Mineral Industry',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          width: 120.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 18.0),
                          child: Text(
                            '20:49 UTC',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Text(
                        'MSIX',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Row(
                      children: const <Widget> [
                        Text('LKOH', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),),
                        SizedBox(width: 140.0,),
                        Text('4.611,50', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Text('PJSC LUKOIL', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.grey),),
                        SizedBox(width: 120.0,),
                        Text('+219,00', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF33C227),),),
                        SizedBox(width: 18.0,),
                        Text('+4,91%', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFF33C227),),),
                      ],
                    ),
                    const SizedBox(height: 24.0,),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor, width: 0.5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: const <Widget>[
                            Text('M Cap, \$', style: TextStyle(fontSize: 14.0),),
                            SizedBox(width: 250.0,),
                            Text('1.2 Bn', style: TextStyle(fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor,width: 0.5),),
                      ),
                      child: Row(
                        children: const [
                          Text('Added to watchlist', style: TextStyle(fontSize: 14.0),),
                          SizedBox(width: 125.0,),
                          Text('October 12, 2022', style: TextStyle(fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor, width: 0.5),),
                      ),
                      child: Row(
                        children: const [
                          Text('Performance since added'),
                          SizedBox(width: 170.0,),
                          Text('4%', style: TextStyle(color: Color(0xFF33C227), fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor, width: 0.5),),
                      ),
                      child: Row(
                        children: const [
                          Text('Divident yield'),
                          SizedBox(width: 50.0,),
                          Text('7%', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                          SizedBox(width: 55.0,),
                          Text('FCF Yield'),
                          SizedBox(width: 50.0,),
                          Text('5%', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Row(
                      children: const [
                        Text('Ev/EBITDA'),
                        SizedBox(width: 60.0,),
                        Text('4.0x', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                        SizedBox(width: 55.0,),
                        Text('P/E'),
                        SizedBox(width: 80.0,),
                        Text('3.0x', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.adb,
                          color: kPrimaryColor,
                        ),
                        Text(
                          ' Information technlogies',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          width: 60.0,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 18.0),
                          child: Text(
                            '20:49 UTC',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Text(
                        'NASDAQ',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Row(
                      children: const <Widget> [
                        Text('AMZN', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),),
                        SizedBox(width: 135.0,),
                        Text('3.311,30', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Row(
                      children: const <Widget>[
                        Text('AMAZON', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.grey),),
                        SizedBox(width: 160.0,),
                        Text('-10,63', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFFCF4425),),),
                        SizedBox(width: 18.0,),
                        Text('-0,32%', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700, color: Color(0xFFCF4425),),),
                      ],
                    ),
                    const SizedBox(height: 24.0,),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor, width: 0.5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: const <Widget>[
                            Text('M Cap, \$', style: TextStyle(fontSize: 14.0),),
                            SizedBox(width: 250.0,),
                            Text('2.7 Bn', style: TextStyle(fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor,width: 0.5),),
                      ),
                      child: Row(
                        children: const [
                          Text('Added to watchlist', style: TextStyle(fontSize: 14.0),),
                          SizedBox(width: 110.0,),
                          Text('September 23, 2022', style: TextStyle(fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor, width: 0.5),),
                      ),
                      child: Row(
                        children: const [
                          Text('Performance since added'),
                          SizedBox(width: 170.0,),
                          Text('2%', style: TextStyle(color: Color(0xFF33C227), fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Container(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: kBackgroundColor, width: 0.5),),
                      ),
                      child: Row(
                        children: const [
                          Text('Divident yield'),
                          SizedBox(width: 50.0,),
                          Text('1%', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                          SizedBox(width: 55.0,),
                          Text('FCF Yield'),
                          SizedBox(width: 50.0,),
                          Text('4%', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8.0,),
                    Row(
                      children: const [
                        Text('Ev/EBITDA'),
                        SizedBox(width: 60.0,),
                        Text('2.0x', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                        SizedBox(width: 55.0,),
                        Text('P/E'),
                        SizedBox(width: 85.0,),
                        Text('1.0x', style: TextStyle(fontWeight: FontWeight.w700, color:Color(0xFF33C227),),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget watchlistTable() {
    return Center(
      child: SingleChildScrollView(
        //  padding: const EdgeInsets.all(8.0),
        child: DataTable(
          columnSpacing: 38.0,
          sortColumnIndex: 1,
          sortAscending: true,
          columns: const [
            DataColumn(
              label: Text(
                'Ticker',
                style: TextStyle(color: Colors.grey),
              ),
              tooltip: 'Name of the stock',
              //    onSort: onSort,
            ),
            DataColumn(
                label:
                    Text('Stock  price', style: TextStyle(color: Colors.grey))),
            DataColumn(
                label: Text('Days in   Watchlist',
                    style: TextStyle(color: Colors.grey)),
                numeric: true),
            DataColumn(
                label: Text('Performance  since added',
                    style: TextStyle(color: Colors.grey)),
                numeric: true),
          ],
          rows: const [
            DataRow(selected: true, cells: [
              DataCell(Text('LKOH')),
              DataCell(Text('425.2')),
              DataCell(Text('8')),
              DataCell(Text(
                '7%',
                style: TextStyle(color: Colors.green),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text('ENI')),
              DataCell(Text('853.8')),
              DataCell(Text('12')),
              DataCell(Text(
                '-11%',
                style: TextStyle(color: Colors.red),
              )),
            ]),
            DataRow(
              cells: [
                DataCell(Text('XON')),
                DataCell(Text('245.32')),
                DataCell(Text('16')),
                DataCell(Text(
                  '2%',
                  style: TextStyle(color: Colors.green),
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('BMPC')),
                DataCell(Text('4611.8')),
                DataCell(Text('4')),
                DataCell(Text(
                  '-5%',
                  style: TextStyle(color: Colors.red),
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('AMZN')),
                DataCell(Text('3311.82')),
                DataCell(Text('19')),
                DataCell(Text(
                  '10%',
                  style: TextStyle(color: Colors.green),
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('ROSN')),
                DataCell(Text('245.28')),
                DataCell(Text('15')),
                DataCell(Text(
                  '3%',
                  style: TextStyle(color: Colors.green),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDataTable() {
    final columns = [
      'Ticker',
      'Stock  price',
      'Days in   Watchlist',
      'Performance  since added'
    ];

    return DataTable(
      columnSpacing: 24.0,
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(watchlist),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(
              column,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<WatchlistDataModel> valuations) =>
      valuations.map((WatchlistDataModel watchlist) {
        final cells = [
          watchlist.ticker,
          watchlist.price,
          watchlist.days,
          watchlist.performance,
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map(
        (data) => DataCell(
          Text('$data'),
        ),
      )
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      watchlists.sort((ticker1, ticker2) =>
          compareString(ascending, ticker1.ticker, ticker2.ticker));
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
