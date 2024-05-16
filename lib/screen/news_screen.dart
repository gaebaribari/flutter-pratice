import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<dynamic> lstNewsInfo = [];

  @override
  void initState() {
    super.initState();

    getNewsInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff424242),
        title: Text(
          '📰 HeadLine News',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: lstNewsInfo.length,
        itemBuilder: (context, index) {
          var newsItem = lstNewsInfo[index];
          print(newsItem['urlToImage']);
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    child: newsItem['urlToImage'] != null
                        ? ClipRRect(
                            child: Image.network(
                              newsItem['urlToImage'],
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          )
                        : ClipRRect(
                            child: Text('이미지가 없어요'),
                            borderRadius: BorderRadius.circular(10),
                          ),
                  ),
                  Container(
                    height: 57,
                    decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ))),
                    width: double.infinity,
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(
                            newsItem['title'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future getNewsInfo() async {
    const apiKey = 'c4dda52f3bf342b3944bb42a5ce9fb67';
    const apiUrl =
        'https://newsapi.org/v2/top-headlines?country=kr&apiKey=${apiKey}';

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final Map<String, dynamic> responsData = json.decode(response.body);

        setState(() {
          lstNewsInfo = responsData['articles'];
        });
      } else {
        throw Exception('뉴스를 로드하는데 실패했습니다 ');
      }
    } catch (error) {
      print(error);
    }
  }
}
