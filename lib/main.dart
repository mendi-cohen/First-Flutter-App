import 'dart:math';

import 'package:flutter/material.dart';
import 'MyCountBox.dart';
import './MyBuilderBox.dart';
import './myExtentBox.dart';

void main() {
  runApp(const MyApp());
}

const items = [
  "https://www.gstatic.com/webp/gallery/1.jpg",
  "https://www.gstatic.com/webp/gallery/2.jpg",
  "https://www.gstatic.com/webp/gallery/3.jpg",
  "https://www.gstatic.com/webp/gallery/4.jpg",
  "https://www.gstatic.com/webp/gallery/5.jpg",
  "https://images.unsplash.com/photo-1503424886307-b090341d25d1?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      "https://wallpapers.com/images/featured/picture-en3dnh2zi84sgt3t.jpg",
  "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwrie9gP1c4aRuwYwpAojAnxNNmdESs3BFGQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlDLdxey6GHFVf3TWMvYupgkFHBGFWGf_6uw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG1LoZlhuqHxQVSqAM6H_JOb0oBHbgX1xqXA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjjuJB_ppCOSFrNBkQ4q8P546PVk6UzQqDOQ&usqp=CAU",
  "https://expertphotography.b-cdn.net/wp-content/uploads/2011/06/how-to-take-good-pictures-waterlilly.jpg",
  "https://images.prismic.io/hello-aurora/88dffcfb-8bad-446d-8929-df34b2dc9a27_83df9712-1fe2-436f-a62c-2fbf170b8487_5.jpg?auto=compress%2Cformat&w=1400&width=1400",
  "https://parade.com/.image/t_share/MTkyMzgzNjgyNzY4NTQ1MzE5/fall-pictures.jpg",
  "https://img.freepik.com/premium-photo/picture-lake-with-mountains-background_878402-1774.jpg?size=338&ext=jpg&ga=GA1.1.1448711260.1707177600&semt=ais",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoiZ-iHWFdVZBBt2StWa69zvHCiID9Sfx1yw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUzUDaFSvSJo29J51TV0yAO3jmLbGYp_cT3Q&usqp=CAU",
  "https://hips.hearstapps.com/hmg-prod/images/best-fall-pictures-central-park-1657041884.jpeg?crop=1xw:1xh;center,top&resize=980:*",
];

const texsts = [
  "שלום",
  "לך",
  "המרצה",
  "נהר",
  "אתה",
  "אחלה",
  "מרצה",
  "שמסביר",
  "מצויין",
  "ונחמד",
  "מאוד",
  "וכו'",
  "עוד ",
  "קצת ",
  "קישקוש",
  "בשביל",
  "מערך",
  "ארוך ",
  "מספיק",
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("GridView- count with Gesture")),
          body: Column(children: [
            SizedBox(
              height: 200,
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () => {print("event- tap")},
                    child: MyCountBox(
                      color: "red",
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () => {
                      // ignore: avoid_print
                      print("event- double tap")
                    },
                    child: MyCountBox(
                      color: "yellow",
                      image:
                          "https://www.thespruce.com/thmb/ew5ClpRANa-yO53K8fFlU1rablk=/4169x0/filters:no_upscale():max_bytes(150000):strip_icc()/the-difference-between-trees-and-shrubs-3269804-hero-a4000090f0714f59a8ec6201ad250d90.jpg",
                    ),
                  ),
                  GestureDetector(
                    onVerticalDragStart: (details) =>
                        {print("event- dragStart - vertical")},
                    child: MyCountBox(
                      color: 'green',
                      image:
                          "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg",
                    ),
                  ),
                  GestureDetector(
                    onHorizontalDragStart: (details) =>
                        {print("event- dragStart - horizontal ")},
                    child: MyCountBox(
                      color: 'blue',
                      image: "https://cdn.hswstatic.com/gif/water-update.jpg",
                    ),
                  )
                ],
              ),
            ),




            const Text(" GridView- Builder"),

            SizedBox(
                height: 200,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    // ignore: avoid_print
                    print("now!!! $index");
                    return MyBuilderBox(image: items[index]);
                  },
                )),




            const Text(" GridView- extent"),

            SizedBox(
                height: 300,
                child: GridView.extent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  padding: const EdgeInsets.all(8.0),
                  scrollDirection: Axis.horizontal,
                   reverse: true,
                  children: texsts.map((text) {

                    return Container(
                        color: Colors.blue,
                        child: GestureDetector(
                          onTap: () => {
                    // ignore: avoid_print
                            print("Extent:$text")
                          },
                          child: Card(
                          child: Center(
                            child: Text(
                              text,
                              
                              style: const TextStyle(
                                  fontSize: 25.0,
                                   color: Colors.black,
                                   ),
                            ),
                          ),
                        )));
                  }).toList(),
                ))
          ])),
    );
  }
}
