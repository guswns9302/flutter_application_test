// 플러터 앱을 만들때 가장 먼저 임포트해야 할 요소
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// 앱의 시작점 : 가장 먼저 실행
// 메인 함수는 runApp를 무조건 호출해야함
// runApp은 위젯을 arg로 받아야 함
// 첫글자 소문자 -> 함수
// 첫글자 대문자 -> 클래스
void main() => runApp(const MyApp());

// 개발할때 가장 상단의 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: false),
      home: const Grade(), // 정상적으로 실행됫을때 보여지는 부분
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold : 앱 화면에 다양한 요소를 배치하고 그릴 수 있는 빈 도화지
    return Scaffold(
      backgroundColor: Colors.amber[800],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/second.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/first.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/first.png'),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: const Text('Eddy'),
              accountEmail: const Text('guswns9302@naver.com'),
              onDetailsPressed: () {
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Home'),
              onTap: () {
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text('Setting'),
              onTap: () {
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                color: Colors.black,
              ),
              title: const Text('Q&A'),
              onTap: () {
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('demo flutter app'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          )
        ],
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('go next page'),
        onPressed: () {
          // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          //   content: Text('스낵바 메세지'),
          // ));
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondPage()));
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.thumbs_up_down),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("스낵바 지속시간은 5초야~"),
            duration: const Duration(seconds: 5),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdPage()),
                );
              },
            ),
          ));
        },
      ),

      // body: const Padding(
      //   padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Center(
      //         child: CircleAvatar(
      //           backgroundImage: AssetImage('assets/first.png'),
      //           radius: 80.0,
      //         ),
      //       ),
      //       Divider(
      //         height: 60.0,
      //         color: Colors.black,
      //         thickness: 2,
      //         endIndent: 30.0,
      //       ),
      //       Text(
      //         '이름',
      //         style: TextStyle(
      //           color: Colors.white,
      //           letterSpacing: 2.0,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10.0,
      //       ),
      //       Text(
      //         'Eddy',
      //         style: TextStyle(
      //           color: Colors.white,
      //           letterSpacing: 2.0,
      //           fontSize: 28.0,
      //           fontWeight: FontWeight.bold
      //         ),
      //       ),
      //       SizedBox(
      //         height: 30.0,
      //       ),
      //       Text(
      //         'BIRTHDAY',
      //         style: TextStyle(
      //           color: Colors.white,
      //           letterSpacing: 2.0,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10.0,
      //       ),
      //       Text(
      //         '2/13',
      //         style: TextStyle(
      //           color: Colors.white,
      //           letterSpacing: 2.0,
      //           fontSize: 28.0,
      //           fontWeight: FontWeight.bold
      //         ),
      //       ),
      //       SizedBox(
      //         height: 30.0,
      //       ),
      //       Row(
      //         children: [
      //           Icon(Icons.check_circle_outline),
      //           SizedBox(
      //             width: 10.0,
      //           ),
      //           Text(
      //             'flutter',
      //             style: TextStyle(
      //               fontSize: 16.0,
      //               letterSpacing: 1.0
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Icon(Icons.check_circle_outline),
      //           SizedBox(
      //             width: 10.0,
      //           ),
      //           Text(
      //             'java',
      //             style: TextStyle(
      //               fontSize: 16.0,
      //               letterSpacing: 1.0
      //             ),
      //           ),
      //         ],
      //       ),
      //       Row(
      //         children: [
      //           Icon(Icons.check_circle_outline),
      //           SizedBox(
      //             width: 10.0,
      //           ),
      //           Text(
      //             'js',
      //             style: TextStyle(
      //               fontSize: 16.0,
      //               letterSpacing: 1.0
      //             ),
      //           ),
      //         ],
      //       ),
      //       Center(
      //         child: CircleAvatar(
      //           backgroundImage: AssetImage('assets/second.png'),
      //           radius: 60.0,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("second page"),
      ),
      body: const Center(
        child: Text(
          '조아쒀~~~~~',
          style: TextStyle(fontSize: 20.0, color: Colors.redAccent),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("third page"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          style: TextButton.styleFrom(backgroundColor: Colors.red), 
          child: const Text('Toast'),
        ),
      ),
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(
    msg: 'Flutter toast',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.brown,
    fontSize: 20.0,
    textColor: Colors.black,
    toastLength: Toast.LENGTH_SHORT
  );
}