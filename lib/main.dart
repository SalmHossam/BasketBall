
import 'package:flutter/material.dart';

void main() {
  runApp(pointCounter());
}
class pointCounter extends StatefulWidget {
  const pointCounter({Key? key}) : super(key: key);
  @override
  State<pointCounter> createState() => _pointCounterState();
}
class _pointCounterState extends State<pointCounter> {
  int teamApoints=0;
  int teamBpoints=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(backgroundColor:Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Points Counter"),
        ),
        body:SafeArea(
          child:
        Expanded(
          flex: 500,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             Expanded(child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   height: 500,
                   child: Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('Team A',style:
                         TextStyle(fontSize: 32),)
                         ,Text('$teamApoints',style:
                         TextStyle(fontSize: 150),
                         ),
                         ElevatedButton( style: ElevatedButton.styleFrom(
                           primary:Colors.deepOrange,),
                             onPressed: (){
                               teamApoints++;
                               setState(() {

                               });

                             },
                             child: Text('Add 1 point'
                               ,style: TextStyle(fontSize: 20,color: Colors.black),)),

                         ElevatedButton( style: ElevatedButton.styleFrom(
                           primary:Colors.deepOrange,),
                             onPressed: (){
                               teamApoints=teamApoints+2;
                               setState(() {

                               });
                             },
                             child: Text('Add 2 point'
                               ,style: TextStyle(fontSize: 20,color: Colors.black),)),
                         ElevatedButton( style: ElevatedButton.styleFrom(
                           primary:Colors.deepOrange,),
                             onPressed: (){
                               teamApoints=teamApoints+3;
                               setState(() {

                               });
                             },
                             child: Text('Add 3 point'
                               ,style: TextStyle(fontSize: 20,color: Colors.black),)),
                       ],),
                   ),
                 ),
                 SizedBox(
                   height: 550,
                   child: VerticalDivider(
                     thickness: 3,
                     width: 4,
                     indent: 0,
                     color: Colors.black26,
                   ),
                 ),
                 Container(
                   height: 500,
                   child: Expanded(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text('Team B',style:
                         TextStyle(fontSize: 32),)
                         ,Text('$teamBpoints',style:
                         TextStyle(fontSize: 150),
                         ),
                         ElevatedButton( style: ElevatedButton.styleFrom(
                           primary:Colors.deepOrange,),
                             onPressed: (){
                               setState(() {
                                 teamBpoints++;

                               });
                             }, child: Text('Add 1 point'
                               ,style: TextStyle(fontSize: 20,color: Colors.black),)),
                         ElevatedButton( style: ElevatedButton.styleFrom(
                           primary:Colors.deepOrange,),
                             onPressed: (){
                               setState(() {
                                 teamBpoints=teamBpoints+2;
                               });
                             }, child: Text('Add 2 point'
                               ,style: TextStyle(fontSize: 20,color: Colors.black),)),
                         ElevatedButton( style: ElevatedButton.styleFrom(
                           primary:Colors.deepOrange,),
                             onPressed: (){
                               setState(() {
                                 teamBpoints=teamBpoints+3;
                               });
                             }, child: Text('Add 3 point'
                               ,style: TextStyle(fontSize: 20,color: Colors.black),)),
                       ],),
                   ),
                 ),
               ],),) ,
                Container(
                  child: ElevatedButton( style: ElevatedButton.styleFrom(
                    primary:Colors.deepOrange,),
                      onPressed: (){
                    setState(() {
                      teamBpoints=0;
                      teamApoints=0;
                    });
                      }, child: Text('Rest'
                        ,style: TextStyle(fontSize: 20,color: Colors.black),)),
                ),
              ]),
        ),
        ),
      ),
    );
  }
}
