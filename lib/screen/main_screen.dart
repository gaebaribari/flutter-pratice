import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 200,
            margin: EdgeInsets.all(30),
            child: ElevatedButton(
                onPressed: () {
                  print('버튼이 눌렸습니다');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                onPrimary: Colors.red,
                elevation: 40),
                child: Text('눌러보세요')),
          )
        ],
      ),
    );
  }
}
