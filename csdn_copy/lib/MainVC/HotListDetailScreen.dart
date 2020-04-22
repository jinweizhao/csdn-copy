import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotListDetailScreen extends StatefulWidget {
  HotListDetailScreen({this.title,this.detail, Key key}) : super(key: key);

  final title;
  final detail;

  @override
  _HotListDetailScreenState createState() => _HotListDetailScreenState();
}

class _HotListDetailScreenState extends State<HotListDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          widget.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top:84),
        child: Text(widget.detail),
      ),
    );
  }
}
