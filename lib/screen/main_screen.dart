import 'package:flutter/material.dart';
import 'package:untitled/screen/news_screen.dart';

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
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsScreen()),
              );
            },
            child: Text(
              '뉴스를 보고싶다면 여기를 클릭'
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Text(
              '헤더영역',
            )),
            ListTile(
              title: Text(
                '홈 화면',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text(
                '메인 화면',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/main');
              },
            ),
            ListTile(
              title: Text(
                '서브 화면',
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/sub',
                  arguments: 'hello',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
