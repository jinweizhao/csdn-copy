import 'package:csdn_copy/MainVC/Views/AttentionView.dart';
import 'package:csdn_copy/MainVC/Views/HotList.dart';
import 'package:csdn_copy/MainVC/Views/RecommendView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  int _currentIndex = 0;

  var selectedStyle = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.normal,
  );
  var deSelectedStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.bold,
  );

  @override
  bool get wantKeepAlive => true;

  void switchTypeView(int index) {
    // setState(() {
    //   _currentIndex = index;
    // });
    _tabController.index = index;
  }

  TabController _tabController;
  List<Widget> views;
  @override
  void initState() {
    views = [
      AttentionView(),
      RecommendView(),
      HotListView(),
    ];

    _tabController = TabController(
      length: 3,
      vsync: this,
    );

    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CupertinoPageScaffold(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 44, 20, 84),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Color.fromRGBO(235, 236, 241, 1),
                        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.search,
                                color: Color.fromRGBO(92, 93, 121, 1)),
                            Text(
                              '搜索博文/帖子/用户',
                              style: TextStyle(
                                color: Color.fromRGBO(92, 93, 121, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.add,
                      color: Color.fromRGBO(43, 44, 46, 1),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  CupertinoButton(
                      minSize: 35,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        '关注',
                        style: _currentIndex == 0
                            ? selectedStyle
                            : deSelectedStyle,
                      ),
                      onPressed: () {
                        switchTypeView(0);
                      }),
                  CupertinoButton(
                      minSize: 35,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        '推荐',
                        style: _currentIndex == 1
                            ? selectedStyle
                            : deSelectedStyle,
                      ),
                      onPressed: () {
                        switchTypeView(1);
                      }),
                  CupertinoButton(
                      minSize: 35,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        '热榜',
                        style: _currentIndex == 2
                            ? selectedStyle
                            : deSelectedStyle,
                      ),
                      onPressed: () {
                        switchTypeView(2);
                      }),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color.fromRGBO(241, 241, 241, 1),
            ),
            Expanded(
              child: TabBarView(
                children: views,
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
