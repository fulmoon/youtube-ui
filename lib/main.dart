import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'YouTube'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

//  void _incrementCounter() {
//    setState(() {
  //_counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('YouTube'),
        leading: Image.asset('assets/icon.png'),
        actions: <Widget>[
          Text('검색 결과 새로운 모멘텀으로 활기찬 하루를 준비하...'),
          Icon(Icons.ondemand_video),
          Icon(Icons.search_outlined),
          Icon(Icons.menu),
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/IU_at_%22Persona%22_press_conference%2C_27_March_2019_02.jpg/640px-IU_at_%22Persona%22_press_conference%2C_27_March_2019_02.jpg',
                width: 160,
                height: 100,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Text(
                    "[띵곡]IU 신작뮤비( 내 맘대로 )",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "IU (아이유) - My Playlist 2022 Palette ",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "조회수 440만회 * 8개월 전 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/pic.jpeg',
                width: 160,
                height: 100,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Text(
                    "AIRWolf: 신작 영화, Remake",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "21st Centuries Product - 배급 CJ    ",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "조회수 440만회 * 8개월 전 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Image.network(
                'data:image/jpeg;base64,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',
                width: 160,
                height: 100,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Text(
                    "올 여름은 이거다! 신나는 여름 노래모음",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "구독 좋아요 알림 댓글은 사랑입니다! 많은 성원바랍니다.",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "조회수 345,572회  2022. 6. 4.  썸네일 : 수지 (SUZY) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
