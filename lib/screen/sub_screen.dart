import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  String message;
  SubScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '서브스크린',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              '  서브화면 입니다, $message',
            ),
          ),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('뒤로가기 버튼'))
        ],
      ),
    );
  }
}
