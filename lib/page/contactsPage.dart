import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: buildAppBar(context),
      body: new ListView(
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
    return new AppBar(title: const Text('通讯录'));
  }

  Widget header(BuildContext context) {
    return new Image.network(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1551067223&di=93fb1cebb1f97f01f0350d14a5976ab7&src=http://d.ifengimg.com/w600/p0.ifengimg.com/pmop/2017/1214/96416B11D556AB4C38E16260E0A7C23DFE930BBF_size51_w720_h1036.jpeg',

    );
  }
}
