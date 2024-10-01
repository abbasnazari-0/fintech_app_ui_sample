import 'package:fintech_app_ui_sample/core/utils/avatar_datas.dart';
import 'package:fintech_app_ui_sample/features/feature_home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:flutter/services.dart';

class TransferScreen extends StatefulWidget {
  TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  int itemVisible = 0;
  String visibleItem = '';
  final TextEditingController _controller = TextEditingController();
  String _amount = '';

  @override
  void initState() {
    super.initState();
    _controller.addListener(_updateAmount);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateAmount() {
    setState(() {
      _amount = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SafeArea(
        child: SingleChildScrollView(
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
                    'Transfer',
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
              Text(
                'Send money to',
                style: Theme.of(context).textTheme.headlineMedium
                  ?..copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 170,
                width: 300,
                child: Center(
                  child: OverlappedCarousel(
                    widgets: avatars
                        .map((e) => VisibilityDetector(
                              key: Key(e['name'].toString()),
                              onVisibilityChanged: (visibilityInfo) {
                                if (visibilityInfo.visibleFraction > 0.5) {
                                  itemVisible++;
                                  visibleItem = e['name'].toString();
                                  setState(() {});
                                }
                              },
                              child: Container(
                                width: 100,
                                height: double.maxFinite,
                                padding: visibleItem == e['name'].toString()
                                    ? const EdgeInsets.all(4)
                                    : null,
                                decoration: visibleItem == e['name'].toString()
                                    ? BoxDecoration(
                                        color: Theme.of(context).canvasColor,
                                        borderRadius: BorderRadius.circular(99),
                                      )
                                    : null,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor:
                                      Theme.of(context).canvasColor,
                                  backgroundImage:
                                      AssetImage(e['avatar'].toString()),
                                ),
                              ),
                            ))
                        .toList(),
                    currentIndex: itemVisible,

                    onClicked: (index) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("You clicked at $index"),
                        ),
                      );
                    },
                    // To obscure or blur cards not in focus use the obscure parameter.
                    obscure: 0.1,

                    // To control skew angle
                    skewAngle: 0.25,
                  ),
                ),
              ),
              Text(
                visibleItem,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.circular(99),
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                height: 50,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Image.network(
                      'https://ae.visamiddleeast.com/content/dam/VCOM/global/about-visa/images/visa-brandmark-blue-1960x622.png',
                      width: 60,
                      height: 50,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '******78560',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),

                    // down arrow
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: MediaQuery.of(context).size.width * 0.78,
                      height: MediaQuery.of(context).size.height * 0.079,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          TextField(
                            controller: _controller,
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(color: Colors.transparent),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 40.0),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'^\d*\.?\d{0,2}')),
                            ],
                          ),
                          Center(
                            child: _amount.isEmpty
                                ? Text(
                                    '\$ Amount',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(color: Colors.grey),
                                  )
                                : RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '\$ ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium,
                                        ),
                                        ..._buildAmountSpans(),
                                      ],
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    // a number pad
                    Expanded(
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.9,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 0,
                        ),
                        itemCount: numberPad.length,
                        itemBuilder: (context, index) {
                          if (numberPad[index]['icon'] != null) {
                            return Center(
                                child: Icon(numberPad[index]['icon']));
                          }
                          return Center(
                              child: Text(numberPad[index]['text'].toString()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
                height: 20,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: CustomPaint(
                    painter: ConnectorPainter(
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 30),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).primaryColor,
                    ),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).primaryColor.withAlpha(200),
                      size: 20,
                    ),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).primaryColor.withAlpha(100),
                      size: 15,
                    ),
                    Icon(
                      Icons.arrow_back_ios_new,
                      color: Theme.of(context).primaryColor.withAlpha(50),
                      size: 10,
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.40,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Center(
                          child: Text(
                        'Send Money',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List numberPad = [
    {
      'text': '1',
      'value': 1,
      'subtitle': '',
    },
    {
      'text': '2',
      'value': 2,
      'subtitle': 'ABC',
    },
    {
      'text': '3',
      'value': 3,
      'subtitle': 'DEF',
    },
    {
      'text': '4',
      'value': 4,
      'subtitle': 'GHI',
    },
    {
      'text': '5',
      'value': 5,
      'subtitle': 'JKL',
    },
    {
      'text': '6',
      'value': 6,
      'subtitle': 'MNO',
    },
    {
      'text': '7',
      'value': 7,
      'subtitle': 'PQRS',
    },
    {
      'text': '8',
      'value': 8,
      'subtitle': 'TUV',
    },
    {
      'text': '9',
      'value': 9,
      'subtitle': 'WXYZ',
    },
    {
      'text': '.',
      'value': '.',
      'subtitle': '.,',
    },
    {
      'text': '0',
      'value': 0,
      'subtitle': '',
    },
    {
      'icon': Icons.backspace_outlined,
      'text': 'Delete',
      'value': -1,
      'subtitle': '',
    },
  ];

  List<TextSpan> _buildAmountSpans() {
    List<TextSpan> spans = [];
    if (_amount.contains('.')) {
      List<String> parts = _amount.split('.');
      spans.add(TextSpan(
        text: parts[0],
        style: Theme.of(context).textTheme.displayMedium,
      ));
      if (parts.length > 1) {
        spans.add(TextSpan(
          text: '.',
          style: Theme.of(context).textTheme.displayMedium,
        ));
        spans.add(TextSpan(
          text: parts[1],
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.color
                    ?.withOpacity(0.5),
              ),
        ));
      }
    } else {
      spans.add(TextSpan(
        text: _amount,
        style: Theme.of(context).textTheme.displayMedium,
      ));
    }
    return spans;
  }
}
