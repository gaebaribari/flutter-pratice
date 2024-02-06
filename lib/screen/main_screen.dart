import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List listHello = ['안녕', '반가워', '잘가'];
  TextEditingController idController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인화면'),
      ),
      body: Column(
        children: [
          TextField(
            controller: idController,
            decoration: InputDecoration(
              labelText: '아이디를 입력해주세요',
            ),
          ),
          ElevatedButton(onPressed: (){
            print(idController.text.toString());
          }, child: Text('아이디 입력값 가져오기'),),
        ],
      ),
    );
  }
}
