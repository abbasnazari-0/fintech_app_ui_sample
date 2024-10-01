import 'package:fintech_app_ui_sample/features/feature_home/presentation/home_screen.dart';
import 'package:fintech_app_ui_sample/features/feature_statics/presesntation/widgets/fl_chart.dart';
import 'package:flutter/material.dart';

List spending = [
  {
    'name': 'Food',
    'icon': Icons.fastfood_rounded,
    'amount': '\$345.05',
  },
  {
    'name': 'Taxi',
    'icon': Icons.local_taxi_rounded,
    'amount': '\$187.02',
  },
  {
    'name': 'Shopping',
    'icon': Icons.shopping_cart_rounded,
    'amount': '\$230.00',
  },
];

class StaticsScreen extends StatelessWidget {
  const StaticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
                Text(
                  'Statics',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: const Icon(Icons.more_horiz),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 93,
                  top: 15,
                  child: _buildConnector(10, 40, context),
                ),
                Positioned(
                  left: 194,
                  top: 15,
                  child: _buildConnector(10, 40, context),
                ),
                Positioned(
                  left: 299,
                  top: 15,
                  child: _buildConnector(10, 40, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            '02',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            'June',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            '2022',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      height: 60,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            'Day',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '\$60,673.',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    TextSpan(
                      text: '09',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.color
                                ?.withOpacity(0.5),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Current Balance',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(height: 30),
            LineChartSample7(),
            const SizedBox(height: 50),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(99),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Center(
                          child: Text(
                        'Spend',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Center(
                          child: Text(
                        'Income',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.grey),
                      )),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  'Spending',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Spacer(),
                Text(
                  'View all',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemCount: spending.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        if (index != 0)
                          Positioned(
                            left: -26,
                            top: 10,
                            child: _buildConnector(20, 50, context),
                          ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                borderRadius: BorderRadius.circular(99),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      borderRadius: BorderRadius.circular(99),
                                    ),
                                    child: Icon(spending[index]['icon']),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    spending[index]['name'],
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(width: 30),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConnector(double width, double height, BuildContext context) {
    return SizedBox(
      width: width * 3,
      height: height - 10,
      child: CustomPaint(
        painter: ConnectorPainter(
          color: Theme.of(context).canvasColor,
        ),
      ),
    );
  }
}
