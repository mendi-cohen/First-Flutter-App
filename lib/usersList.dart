import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class userClasss {
  int id;
  String name;
  String username;
  String email;

  userClasss(
      {required this.id,
      required this.name,
      required this.username,
      required this.email});
}

class MyUsers extends StatefulWidget {
  const MyUsers({super.key});

  @override
  State<MyUsers> createState() => _MyBoxState();
}

class _MyBoxState extends State<MyUsers> {
  List<userClasss> _usersArray = [];

  Future<void> getData() async {
    var url = 'https://jsonplaceholder.typicode.com/users';
    var convertUrl = Uri.parse(url);
    var response = await http.get(convertUrl);

    if (response.statusCode == 200) {
      List<dynamic> userData = jsonDecode(response.body);
      setState(() {
        _usersArray = userData
            .map(
              (item) => userClasss(
                id: item["id"],
                name: item["name"],
                username: item["username"],
                email: item["email"],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: _usersArray.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 4,
              ),
              itemCount: _usersArray.length,
              itemBuilder: (BuildContext context, int index) {
                final user = _usersArray[index];
                return Card(
                  color:  Colors.blue,
                  child: Center(
                    child: Text(user.name),
                  ),
                );
              },
            ),
    );
  }
}
