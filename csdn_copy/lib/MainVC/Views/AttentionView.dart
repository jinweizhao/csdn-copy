import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AttentionView extends StatefulWidget {

  @override
  _AttentionViewState createState() => _AttentionViewState();
}

class _AttentionViewState extends State<AttentionView>{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('关注'),
      ),
    );
  }

}