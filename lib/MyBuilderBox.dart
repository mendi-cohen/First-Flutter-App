import 'package:flutter/material.dart';



class MyBuilderBox extends StatelessWidget {
 
  final image;

  MyBuilderBox({this.image , super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.grey,
      child: Card( color: Colors.blue, child: Image.network(image, fit: BoxFit.fill)),
    );
  }
}