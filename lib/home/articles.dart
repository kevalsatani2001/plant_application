import 'package:flutter/material.dart';

import '../models.dart/articlemodel.dart';
import '../utils/arthelper.dart';
//import 'package:nnnnnnn/utils/arthelper.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  List<Articles> articleclass = [];

  @override
  void initState() {
    articleclass = Articleitem.articleList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(
              itemCount: articleclass.length,
              itemBuilder: (BuildContext context, index) {
                return Text(articleclass[index].text!);
              })
        ],
      ),
    );
  }
}
