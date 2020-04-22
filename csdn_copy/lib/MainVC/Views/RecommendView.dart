import 'package:flutter/cupertino.dart';

class RecommendView extends StatefulWidget {
  @override
  _RecommendViewState createState() => _RecommendViewState();
}

class _RecommendViewState extends State<RecommendView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('推荐'),
      ),
    );
  }
}