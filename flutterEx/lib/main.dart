import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() { //main 스레드는 runApp을 실행시키고 종료가된다.
  runApp(const MyApp());
}

//저장만하면 화면이 리로드됨 핫 리로드 기능
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //AndroidApp을 만든다. IOS CupertinoApp();
      home: SafeArea(//상단바를 침범해서는 안된다.
          child: Scaffold(//구글에서 제공해주는 기본구조가있다.
            appBar: AppBar(
              title: Text('FirstApp.'),
              backgroundColor: Colors.red,
              leading: Icon(Icons.menu),
            ),

            body: Column(
              children: [
                Expanded(//남는공간 끝까지 확장하시오
                  flex: 1,
                  child: Container(//부모의 최대의 크기까지 늘려라
                    color: Colors.red,


                  ),
                ),   
            Expanded(//남는공간 끝까지 확장하시오
              flex: 1,
              child: Container(//부모의 최대의 크기까지 늘려라
                color: Colors.orange,
              ),
            ),
            Expanded(//남는공간 끝까지 확장하시오
              flex: 1,
              child: Container(//부모의 최대의 크기까지 늘려라
                color: Colors.yellow,
              ),
            ),
            Expanded(//남는공간 끝까지 확장하시오
              flex: 1,
              child: Container(//부모의 최대의 크기까지 늘려라
                color: Colors.green,
              ),
            ),
            Expanded(//남는공간 끝까지 확장하시오
              flex: 1,
              child: Container(//부모의 최대의 크기까지 늘려라
                color: Colors.purple,
              ),
            ),
            Expanded(//남는공간 끝까지 확장하시오
              flex: 1,
              child: Container(//부모의 최대의 크기까지 늘려라
                color: Colors.blueAccent,
              ),
            ),
            Expanded(//남는공간 끝까지 확장하시오
              flex: 1,
              child: Container(//부모의 최대의 크기까지 늘려라
                color: Colors.white,
              ),
            ),
              ],
            ),

            floatingActionButton: FloatingActionButton(
              onPressed: (){
                print("버튼클릭이됨");
              },
              child: Text('button'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.yellow,
              items: [
                BottomNavigationBarItem(
                  label: "hello",
                  icon: Icon(
                    Icons.shop
                  )
                ),
                BottomNavigationBarItem(
                    label: "ㅚㅣㅐ",
                    icon: Icon(
                        Icons.shop
                    )
                )

              ],
            ),
        )
      )
    );
  }
}
