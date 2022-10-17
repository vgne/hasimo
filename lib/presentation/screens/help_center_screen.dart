import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hasimo 101: '
                  'Comprehensive guide '
                  'how to use the product',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 14.0,
                ),
                Row(
                  children: const [
                    Text(
                      'Yesterday, 17:22',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 200.0,
                    ),
                    Text(
                      '@Geydar',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage('assets/images/hasimo_help.png'),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                const Text(
                  '1',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: kChipColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'What do you need app for?',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Do you invest or trade stocks? Then you are  in the right spot! We provide you with easy  to navigate and follow core financial data  that helps you to form a view on company’s fundamentals before you start investing. ',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Check out what forward looking valuation multiples companies are trading at, what returns businesses will generate in coming years, what yields you can get and find out  how creditworthiness looks – all in one  place – analyse before investing!',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 14.0),
                const Divider(),
                const SizedBox(height: 14.0),
                const Text(
                  '2',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: kChipColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'How do we help you?',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'We aggregate consensus data and present  it in easy to read and understand format  for you. Portfolio managers all over the world do fundamental analysis with the help  of broker analyst to understand valuation multiples, future returns of the business, leverage metrics and yields.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'We have done this for you!  Pick a company or a sector that you would  like to see fundamental analysis for and you will see it in Hasimo markets app. ',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 14.0),
                const Divider(),
                const SizedBox(height: 14.0),
                const Text(
                  '3',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: kChipColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'What information do we provide?',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'App gives you 4 key dimensions  of information: for each company we provide:',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      'Key forward looking valuation multiples  (P/E, P/B, Ev/EBITDA, Ev/Sales);',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      'Leverage metrics  (Net Debt / EBITDA, Net Debt / Equity);',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      'Yields (FCF yield, Dividend yield) ',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.circle,
                        color: kPrimaryColor,
                        size: 10.0,
                      ),
                    ),
                    Text(
                      'Returns metrics (ROE, ROIC).',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'In addition, we provide in a nice and easy  to read format financial statements for the past 5 years, including P&L, cash flow statement  and balance sheet.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'We also equip you with next interim forecasts, so that you can quickly compare actuals  when published vs. forecasts. You can  also create your own portfolio (we call  it watchlist) and see performance of your picks.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Another feature is that we share with you  who are main shareholders in each company. You can see who are you aligning with, when you invest.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 14.0),
                const Text(
                  '4',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: kChipColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'How do we differentiate',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'In the loads of data, we pick what we think  is important in fundamental analysis  and we provide you this data in easy to read and understand format. We base our analysis on forward-looking consensus forecasts.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'We also give you nice 5-year historical data summary, P&L, cash flow statement  and balance sheet, so that you can see historical progression for each company. ',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'This all comes in easy-to-read format.  Check it out for free before you decide  whether we can help you or not.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 14.0),
                const Text(
                  '5',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: kChipColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'Is this another ideas  broking source?',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'We are not trying to tell you what to buy or sell. Instead, we equip you with core fundamental data for each stock so that you can analyse before making an investment decision.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'We are not broking you ideas, we are helping you to learn more about the company or industry before you push buy or sell button.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 14.0),
                const Text(
                  '6',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                    color: kChipColor,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Text(
                  'How does app work?',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'You can use our app in two ways:',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.search,
                        color: kPrimaryColor,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Enter ticker, name or ISIN of the company  you wanna check key financial data and hit search. ',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'You will get a nice set of screens that  will navigate you through key data you need  to know about the company',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.show_chart,
                        color: kPrimaryColor,
                        size: 30.0,
                      ),
                    ),
                    Text(
                      'Screener',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'If you don’t know which company you want  to check out, but you wanna see companies  in a particular sector, go to our screener tool, select region, sector and key data you wanna screen for.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'For example you want to companies  in renewable energy in Europe  with Ev/Sales <2 – just put that in and hit Find Stocks and screener will find those for you  and aggregate in a nice table showing key fundamental analysis screens for those companies.',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
