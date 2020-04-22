import 'package:csdn_copy/MainVC/HotListDetailScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotListView extends StatefulWidget {
  @override
  _HotListViewState createState() => _HotListViewState();
}

class _HotListViewState extends State<HotListView>
    with AutomaticKeepAliveClientMixin {
  var dataArray = [
    {
      'title': '强烈推荐14款牛逼的IDEA插件，让你开发速度飞起来',
      'detail':
          '烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度',
      'author': 'Yong、、',
      'readCount': '339'
    },
    {
      'title': '在中国程序员是青春饭吗？',
      'detail': '在中国程序员是青春饭吗？',
      'author': '程序猿',
      'readCount': '10101'
    },
    {
      'title': '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'detail':
          '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'author': '楼下小黑哥',
      'readCount': '9654'
    },
    {
      'title': '强烈推荐14款牛逼的IDEA插件，让你开发速度飞起来',
      'detail':
          '烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度',
      'author': 'Yong、、',
      'readCount': '339'
    },
    {
      'title': '在中国程序员是青春饭吗？',
      'detail': '在中国程序员是青春饭吗？',
      'author': '程序猿',
      'readCount': '10101'
    },
    {
      'title': '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'detail':
          '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'author': '楼下小黑哥',
      'readCount': '9654'
    },
    {
      'title': '强烈推荐14款牛逼的IDEA插件，让你开发速度飞起来',
      'detail':
          '烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度',
      'author': 'Yong、、',
      'readCount': '339'
    },
    {
      'title': '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'detail':
          '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'author': '楼下小黑哥',
      'readCount': '9654'
    },
    {
      'title': '强烈推荐14款牛逼的IDEA插件，让你开发速度飞起来',
      'detail':
          '烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度',
      'author': 'Yong...',
      'readCount': '339'
    },
    {
      'title': '在中国程序员是青春饭吗？',
      'detail': '在中国程序员是青春饭吗？',
      'author': '程序猿',
      'readCount': '10101'
    },
    {
      'title': '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'detail':
          '轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？轻轻一扫，立刻扣款，付款码背后的原理你不想知道吗？',
      'author': '楼下小黑哥',
      'readCount': '9654'
    },
    {
      'title': '强烈推荐14款牛逼的IDEA插件，让你开发速度飞起来',
      'detail':
          '烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度烈推荐14款牛逼的IDEA插件，让你开发速度',
      'author': 'Yong...',
      'readCount': '339'
    },
  ];

  Widget getCell(context, index) {
    var model = dataArray[index];

    return GestureDetector(
      onTap: (){
        print(model['title']);
        Navigator.of(context,rootNavigator: true).push(
          CupertinoPageRoute(
            builder:(context){
              return HotListDetailScreen(title: model['title'],detail: model['detail'],);
            }
            ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            model['title'],
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            model['detail'],
            style: TextStyle(
              color: Color.fromRGBO(161, 168, 181, 1),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                model['author'],
                style: TextStyle(
                    color: Color.fromRGBO(161, 168, 181, 1), fontSize: 13),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '阅读 ',
                style: TextStyle(
                    color: Color.fromRGBO(161, 168, 181, 1), fontSize: 13),
              ),
              Text(
                model['readCount'],
                style: TextStyle(
                    color: Color.fromRGBO(231, 41, 66, 1), fontSize: 13),
              ),
            ],
          ),
          Container(
            height: 1,
            margin: EdgeInsets.only(top: 5, bottom: 5),
            color: Color.fromRGBO(241, 241, 241, 1),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    print('attentionview  销毁了');
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      // color: Colors.red,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return getCell(context, index);
        },
        itemCount: dataArray.length,
        padding: EdgeInsets.all(0),
        controller: ScrollController(
          keepScrollOffset: true,
        ),
      ),
    );
  }
}
