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
          TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/sub',
                arguments: 'hello',
              );
            },
            child: Text(
              '클릭하면 서브화면으로 이동',
            ),
          )
        ],
      ),
    );
  }
}
