import 'package:flutter/material.dart';

class MovieDetailPage extends StatefulWidget {
  @override
  _movieDetailPageState createState() => _movieDetailPageState();
}

class _movieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: const Text(
          '电影详情',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        child: Text('假装有内容'),
      ),
    );
  }
}
