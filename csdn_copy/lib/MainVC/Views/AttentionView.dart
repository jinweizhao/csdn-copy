import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AttentionView extends StatefulWidget {
  @override
  _AttentionViewState createState() => _AttentionViewState();
}

class _AttentionViewState extends State<AttentionView> {
  

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverRefreshControl(
          onRefresh: () async {


            setState(() {

            });
          },
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((content, index) {
            return Text('老孟');
          }, childCount: 4),
        )
      ],
    );
  }
}
