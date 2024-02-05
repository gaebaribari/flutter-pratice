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
          Row(
            children: [
              Expanded(flex: 2, child: Text('expanded실험이야')),
              Expanded(child: Text('이건또뭘까')),
              Expanded(child: Text('궁금하네')),
            ],
          ),
          Container(
            width: 300,
            height: 100,
            margin: EdgeInsets.all(32),
            alignment: Alignment.center,
            child: Text('홍드로이드'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
          ),
          Text(
            '홍드로이드2',
            style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.bold,
                fontSize: 30,),
          ),
          Row(
            children: [
              Image.asset(
                'assets/love-birds.png',
                width: 100,
                height: 100,
              ),
              Icon(
                Icons.access_alarm_outlined,
                size: 100,
              )
            ],
          )
        ],
      ),
    );
  }
}
