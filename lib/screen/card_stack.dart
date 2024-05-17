import 'package:flutter/material.dart';

class CardStack extends StatefulWidget {
  const CardStack({Key? key}) : super(key: key);

  @override
  State<CardStack> createState() => _CardStackState();
}

class _CardStackState extends State<CardStack> {
  List<Map<String, dynamic>> cardData = [
    {'id': 0, 'show': true},
    {'id': 1, 'show': true},
    {'id': 2, 'show': true},
  ];
  int activedCardId = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 500,
            child: Stack(
              children: cardData.map((day) {
                final index = day['id'];
                if (day['show'] == true) {
                  return Positioned(
                    top: 120 - 20.0 * index,
                    left: (MediaQuery.of(context).size.width -
                            40.0 * (index + 1)) /
                        2,
                    child: GestureDetector(
                      child: Container(
                        color: Colors.greenAccent,
                        width: 40.0 * (index + 1),
                        height: 300,
                      ),
                      onTap: () {
                        setState(() {
                          day['show'] = false;
                          activedCardId--;
                          print('카드누른후 activedCardId값: ${activedCardId}');
                        });
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              }).toList(),
            ),
          ),
          IconButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(3.0),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              shadowColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            onPressed: () {
              if (activedCardId >= -1 && activedCardId < 2) { //-1 0 1 만 됨
                setState(() {
                  activedCardId++;
                  cardData[activedCardId]['show'] = true;
                  print('되돌린후 activedCardId값: ${activedCardId}');
                });
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('되돌릴 카드가 없습니다'),
                  ),
                );
              }
              ;
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
      ),
    );
  }
}
