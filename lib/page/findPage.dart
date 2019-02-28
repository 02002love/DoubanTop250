import 'package:flutter/material.dart';

class FindPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: <Widget>[
          header(context),
          header(context),
          header(context),
          header(context),
          header(context),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('发现'));
  }

  Widget header(BuildContext context) {
    return new Image.network(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551077324576&di=bb870a4271f8f8bd684c7e10bded05ca&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn16%2F213%2Fw2048h1365%2F20180708%2F52b5-hezpzwt5316594.jpg',

    );
  }
}
