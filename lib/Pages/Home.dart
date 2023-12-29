import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color(0xFF553370),
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       child: SingleChildScrollView(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 55.0, bottom:20.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Text("GupSup!", style: TextStyle(color: Color(0xffc199cd), fontSize: 25.0, fontWeight: FontWeight.w500),),
                 Container(
                   padding: EdgeInsets.all(8.0),
                   decoration: BoxDecoration(
                     color: Color(0xff3a2144),
                     borderRadius: BorderRadius.circular(20.0)
                   ),
                     child: Icon(Icons.search, color:Color(0xffc199cd),))
               ],),
             ),
             Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,

                decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                ),
             )
           ],
         ),
       ),
     ),

   );
  }
}