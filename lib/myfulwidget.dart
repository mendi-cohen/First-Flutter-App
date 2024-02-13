import 'package:flutter/material.dart';





class MyFullWidget extends StatefulWidget {
  @override
  int count;
  MyFullWidget({this.count = 5});

  State<MyFullWidget> createState() => _MyFullWidgetState();
}

class _MyFullWidgetState extends State<MyFullWidget> {
  @override
  void Onpressed1() {
    setState(() {
      widget.count++;
    });
  }

  void Onpressed2() {
    setState(() {
      widget.count--;
    });
  }

  Widget build(BuildContext context) {
    return Center(
        child: Column(
         children: [
         Container(
            alignment: Alignment.center,
              width: 200,
              height:100,
        
              color: Colors.amber,
              child: GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.vertical,
                children: [
                  IconButton(
                    color: Colors.blue,
                      onPressed: Onpressed1, icon: const Icon(Icons.add)),
                   Container(margin: EdgeInsets.only(top: 25), color: Colors.amberAccent, child:Center(child: Text( widget.count.toString()))),
                  IconButton(
                     color: Colors.blue,
                      onPressed: Onpressed2, icon: const Icon(Icons.remove)),
                ],
              ))
    ]));
  }
}
