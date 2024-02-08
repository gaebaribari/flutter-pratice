import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  String message;
  SubScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                '뒤로가기',
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          title: Text(
            '서브스크린',
          ),
          actions: [
            Icon(Icons.account_tree_outlined),
          ],
          bottom: TabBar(tabs: [
            Tab(text: 'tab 1',),
            Tab(text: 'tab 2',),
            Tab(text: 'tab 3',),
          ],),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                'Tab1',
              ),
            ),
            Center(
              child: Text(
                'Tab2',
              ),
            ),
            Center(
              child: Text(
                'Tab3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
