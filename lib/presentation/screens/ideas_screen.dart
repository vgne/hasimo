import 'package:flutter/material.dart';
import 'package:hasimo/constants/constants.dart';

class IdeasScreen extends StatelessWidget {
  const IdeasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.5,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Image.asset('assets/images/ideas_icon.png'),
        ),
        title: const Text(
          'Investment ideas',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/ideas/dividends.jpeg"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Upcoming dividents',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Companies which have announced  upcoming divident payments.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '02/09/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Geydar',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/ideas/environmetally_friendly.png"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Environmetally friendly',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Investing in companies that think about the  future will generate eco-friendly products  and susrainable returns..',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '27/08/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Garry',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/ideas/top_edtech_stocks.jpeg"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Top 5 EdTech Stocks',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Our work landscape is rapidly digitizing and traditional education providers are struggling to keep up. These EdTech disruptors are looking to change that.',
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '25/08/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Max',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/ideas/metaverse.jpeg"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Top 10 Companies Building The Metaverse',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'The Metaverse will be the next evolution of the internet, with augmented and virtual reality adding a new dimension to the way we work, shop, play, and communicate.',
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '22/08/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Mark',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/ideas/chinese_tech_stocks.jpeg"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Top 5 Chinese Stocks',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Large cap U.S. listed Chinese tech firms that have seen 30-70% stock price declines in the last 2 years.',
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '20/08/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Chang',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image:
                            AssetImage("assets/images/ideas/tech_stocks.jpeg"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Tech Stocks',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Technology companies have proved to be the best performing stocks over the last few decades, and with technology developing so quickly, there is no reason to believe that trend will stop now. The list below sorts for stocks with high estimated return on equity over the next few years.',
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '15/08/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Vusal',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/ideas/african_stocks.png"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Top 10 African Stocks',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Africa’s economies are rapidly developing, providing investors with a great opportunity to capture growth in an emerging market.',
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '12/08/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Jamal',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/ideas/renewable_energy.jpeg"),
                        fit: BoxFit.cover),
                    //   child: Text('Hi')
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Renewable Energy',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'With governments around the world enacting policies to turn their energy grids green, renewable energy stocks look like they could be the future. Being capital intensive businesses, the list below looks for the stocks with strong return on equity and healthy balance sheets.',
                  style: TextStyle(fontSize: 18.0),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '25/07/2022',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '@Donald',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
