import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AttentionView extends StatefulWidget {
  @override
  _AttentionViewState createState() => _AttentionViewState();
}

class _AttentionViewState extends State<AttentionView> with AutomaticKeepAliveClientMixin {
  var _dataArray = [
    {
      'image': 'lib/assets/1.jpeg',
      'name': '敖 丙',
      'detail': '微信搜索',
    },
    {
      'image': 'lib/assets/2.jpg',
      'name': '扬帆向海',
      'detail': '专注图像处理',
    },
    {
      'image': 'lib/assets/3.jpg',
      'name': '人工智能博士',
      'detail': '敏于观察善于观察人工智能博士播报实时',
    },
    {
      'image': 'lib/assets/4.jpg',
      'name': '华为云',
      'detail': '此人很懒什么都没写',
    },
    {
      'image': 'lib/assets/1.jpeg',
      'name': '敖 丙',
      'detail': '微信搜索',
    },
    {
      'image': 'lib/assets/2.jpg',
      'name': '扬帆向海',
      'detail': '专注图像处理',
    },
    {
      'image': 'lib/assets/3.jpg',
      'name': '人工智能博士',
      'detail': '敏于观察善于观察人工智能博士播报实时',
    },
    {
      'image': 'lib/assets/4.jpg',
      'name': '华为云',
      'detail': '此人很懒什么都没写',
    },
    {
      'image': 'lib/assets/1.jpeg',
      'name': '敖 丙',
      'detail': '微信搜索',
    },
    {
      'image': 'lib/assets/2.jpg',
      'name': '扬帆向海',
      'detail': '专注图像处理',
    },
    {
      'image': 'lib/assets/3.jpg',
      'name': '人工智能博士',
      'detail': '敏于观察善于观察人工智能博士播报实时',
    },
    {
      'image': 'lib/assets/4.jpg',
      'name': '华为云',
      'detail': '此人很懒什么都没写',
    },
    {
      'image': 'lib/assets/1.jpeg',
      'name': '敖 丙',
      'detail': '微信搜索',
    },
    {
      'image': 'lib/assets/2.jpg',
      'name': '扬帆向海',
      'detail': '专注图像处理',
    },
    {
      'image': 'lib/assets/3.jpg',
      'name': '人工智能博士',
      'detail': '敏于观察善于观察人工智能博士播报实时',
    },
    {
      'image': 'lib/assets/4.jpg',
      'name': '华为云',
      'detail': '此人很懒什么都没写',
    },
  ];

  List<Widget> getItems(context) {
    List<Widget> result = [];
    for (var model in _dataArray) {
      var widget = Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.only(top: 0),
            child: ClipOval(
              child: Image.asset(model['image']),
            ),
          ),
          Text(
            model['name'],
            maxLines: 1,
          ),
          Container(
            height: 35,
            child: Text(
              model['detail'],
              style: TextStyle(
                  color: Color.fromRGBO(144, 156, 178, 1), fontSize: 12),
            ),
          ),
          OutlineButton(
            child: Text('关注'),
            textColor: Colors.red,
            splashColor: Colors.white,
            highlightColor: Colors.white,
            onPressed: (){

            }
          ),
        ],
      );
      result.add(widget);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(8),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      childAspectRatio: 0.59,
      children: getItems(context),
    );
  }


  @override
  bool get wantKeepAlive => true;
}
