import 'package:csdn_copy/BlinkVC/BlinkScreen.dart';
import 'package:csdn_copy/LearnVC/LearnScreen.dart';
import 'package:csdn_copy/MainVC/MainScreen.dart';
import 'package:csdn_copy/MessageVC/MessageScreen.dart';
import 'package:csdn_copy/MineVC/MineScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              title: Text('学习')
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              title: Text('Blink')
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              title: Text('消息')
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.portrait,
              ),
              title: Text('我的')
            ),
          ],
          activeColor: Colors.red,
        ), 
        tabBuilder: (context, index){
          return CupertinoTabView(
            builder: (context){

              switch (index) {
                case 0:
                  return MainScreen();
                  break;
                case 1:
                  return LearnScreen();
                  break;
                case 2:
                  return BlinkScreen();
                  break;
                case 3:
                  return MessageScreen();
                  break;
                default:
                  return MineScreen();
              }
            },
          );
        }
      ),
    );
  }
}