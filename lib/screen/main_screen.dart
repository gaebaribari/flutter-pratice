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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('반갑습니다'),
          Text('저는'),
          Text('누구입니다'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('어떻게 된다는거야'),
              Text('row로는 어떻게 쌓이는건지'),
              Text('궁금하다'),
            ],
          ),
          Row(children: [
            Expanded(flex:2, child: Text('expanded실험이야')),
            Expanded(child: Text('이건또뭘까')),
            Expanded(child: Text('궁금하네')),
          ],)
        ],
      ),
    );
  }
}
