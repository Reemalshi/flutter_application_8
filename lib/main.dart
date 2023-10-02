import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Homescrean(),
    );
  }
}
class Homescrean extends StatefulWidget {
   Homescrean({super.key});
   
  

  @override
  State<Homescrean> createState() => _HomescreanState();
}

class _HomescreanState extends State<Homescrean> {
 List <String> images = [
   "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
   "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
   "https://miro.medium.com/v2/resize:fit:1400/1*YMJDp-kqus7i-ktWtksNjg.jpeg",
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnAsFCvxrmRj_uSFiE3dsvI8M3Il16a_jVUw&usqp=CAU",

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enableInfiniteScroll: true,
            viewportFraction: 9,
            autoPlayAnimationDuration: Duration(milliseconds: 400),
            ),
           items: images
           .map((
            e) => Image.network(
            e,
            fit:BoxFit.cover,
           ),
           ).toList(),
   
        ),
      ),




    );

  }
}





// body: Stack(
        //   children: [
        //     Positioned(
        //       right: -50,
        //       // left: 5,
        //       bottom: 0,
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black,
        //         ),
        //          ),
        //          Align(
        //           child: Container(
        //           width: 50,
        //           height: 50,
        //           color: Colors.blue,
        //         ),
        //         ),
        //       ],
        //     ),


// body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //  child: Row(
        //   children: [
        //     Image.network("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80", 
        //     width: 200,),
        //      Image.network("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
        //       width: 200,),
        //       Image.network("https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
        //        width: 200,),
            
           
        //   ],
        // ),
        // ),


//  Expanded(
//               child: CheckboxListTile(
//               value: true,
//               onChanged: (value) {
                
//               },
//             )),
//             Text("check me "),