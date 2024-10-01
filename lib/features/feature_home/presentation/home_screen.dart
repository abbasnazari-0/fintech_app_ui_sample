import 'package:fintech_app_ui_sample/core/utils/avatar_datas.dart';
import 'package:fintech_app_ui_sample/core/utils/transfer_types.dart';
import 'package:fintech_app_ui_sample/features/feature_statics/presesntation/statics_screen.dart';
import 'package:fintech_app_ui_sample/features/feature_transfer/presentation/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        Text(
                          'Hi',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Imran!',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(width: 5),
                        IconButton(
                          onPressed: () {},
                          icon: const RotatedBox(
                              quarterTurns: 1,
                              child: Icon(Icons.arrow_forward_ios)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Ready to start your day?',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.w200),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 7),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff141a1f),
                          borderRadius: BorderRadius.circular(99),
                        ),
                        child: const Icon(
                          Iconsax.card,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Cards',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Current Balance",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StaticsScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$60,673.',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      TextSpan(
                        text: '09',
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
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
            ),
            const SizedBox(height: 40),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 33,
                  top: 5,
                  child: _buildConnector(22, 70, context),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 70,
                      child: Row(
                        children: [
                          const SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(99),
                            ),
                            width: 60,
                            height: 60,
                            child: const Icon(Iconsax.arrange_circle_24),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Trasfer',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 70,
                      child: Row(
                        children: [
                          const SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(99),
                            ),
                            width: 60,
                            height: 60,
                            child: const Icon(Icons.qr_code_scanner),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Pay QR',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 33,
                  top: 5,
                  child: _buildConnector(22, 70, context),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 70,
                      child: Row(
                        children: [
                          const SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(99),
                            ),
                            width: 60,
                            height: 60,
                            child: const Icon(Iconsax.money_recive4),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Deposit',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 70,
                      child: Row(
                        children: [
                          const SizedBox(width: 7),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: BorderRadius.circular(99),
                            ),
                            width: 60,
                            height: 60,
                            child: const Icon(Iconsax.money_send4),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Withdraw',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  'All Transactions',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const Spacer(),
                Text(
                  'Today',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(width: 10),
                const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    )),
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
                itemCount: avatars.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        if (index == 0)
                          Positioned(
                            left: 35,
                            top: 10,
                            child: _buildConnector(20, 50, context),
                          ),
                        if (index != 0)
                          Positioned(
                            left: -26,
                            top: 10,
                            child: _buildConnector(20, 50, context),
                          ),
                        Row(
                          children: [
                            if (index == 0)
                              Container(
                                width: 60,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(99),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(99),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 7),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(avatars[index]['avatar']),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    avatars[index]['name'],
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
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  'Choose Transfer',
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
              height: 170,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: transferType.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      if (index != 0)
                        SizedBox(
                          width: 20,
                          height: 40,
                          child: CustomPaint(
                            painter: ConnectorPainter(
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransferScreen()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 170,
                          width: 170,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    borderRadius: BorderRadius.circular(99),
                                  ),
                                  child: Icon(
                                    transferType[index]['icon'],
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 150,
                                    maxHeight: 50,
                                  ),
                                  child: Text(
                                    transferType[index]['name'],
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _buildConnector(double width, double height, BuildContext context) {
    return SizedBox(
      width: width * 3,
      height: height - 10,
      child: CustomPaint(
        painter: ConnectorPainter(
          color: Theme.of(context).cardColor,
        ),
      ),
    );
  }
}

class ConnectorPainter extends CustomPainter {
  final Color color;
  ConnectorPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width * 0.2, 0);

    path.quadraticBezierTo(0, 0, 0, size.height * 0.0);

    path.lineTo(0, size.height * 0.8);

    path.quadraticBezierTo(0, size.height, size.width * 0.0, size.height);

    path.quadraticBezierTo(size.width * 0.3, size.height * 0.8,
        size.width * 0.5, size.height * 0.8);

    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.8, size.width, size.height);

    path.quadraticBezierTo(size.width, size.height, size.width, size.height);

    path.lineTo(size.width, size.height * 0.1);

    path.quadraticBezierTo(size.width, 0, size.width, 0);

    path.quadraticBezierTo(size.width * 0.7, size.height * 0.2,
        size.width * 0.5, size.height * 0.2);

    path.quadraticBezierTo(size.width * 0.3, size.height * 0.2, 0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
