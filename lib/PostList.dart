import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class postClass {
  int userId;
  int id;
  String title;
  String body;

  postClass(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}

class MyBox extends StatefulWidget {
  const MyBox({super.key});
  @override
  State<MyBox> createState() => _MyBox();
}

class _MyBox extends State<MyBox> {
  List<postClass> _postArray = [];
  Future<void> getData() async {
    var url = 'https://jsonplaceholder.typicode.com/posts';
    var convertUrl = Uri.parse(url);
    var response = await http.get(convertUrl);
    if (response.statusCode == 200) {
      List<dynamic> postData = jsonDecode(response.body);
      setState(() {
        _postArray = postData
            .map(
              (item) => postClass(
                userId: item["userId"],
                id: item["id"],
                title: item["title"],
                body: item["body"],
              ),
            )
            .toList();
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

    var isChild = false;
  void toggleChildView() {
    setState(() {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => const MyUsers()),);
      Navigator.pushNamed(context,'/second');
  // );
    });
  }

  @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: GestureDetector(
        onTap: toggleChildView,
        child: const Card(
          child: Text("click here"),
        ),
      ),
    ),
    body: _postArray.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 4,
            ),
            itemCount: _postArray.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.red,
                child: Center(child: Text(_postArray[index].title)),
              );
            },
          ),
  );
}
}
/////////// users list
