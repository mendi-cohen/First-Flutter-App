import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override

Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text('my-app name is Flutter!!!'), 
      ),
      body:const Center(child: Text('hello world!!')
      ),
      drawer: Drawer(
        child: ListView(
        children : [
          ListTile(title: const Text('Item 1'), onTap: () {}),
          ListTile(title: const Text('Item 2'), onTap: () {}),
        ] ,
        ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            ),

        ],
      ),

floatingActionButton: FloatingActionButton(
  onPressed: () {},
   child: const Icon(Icons.add),
  ), 

   ),
  );

}
}