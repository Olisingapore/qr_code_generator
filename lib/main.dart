import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
final pagetitle = 'Scan Code';   // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text(pagetitle),
        backgroundColor: Colors.green,),
         floatingActionButton: ElevatedButton(
           onPressed: () {
             Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => SecondRoute()));
           },child: Text("Create New Prescription "),),



         body: Center(

            child:  QrImage(
              backgroundColor: Colors.white,
              data: 'Sample', // replace with var that relates to data generated
              version: QrVersions.auto,
              size: 320,
              gapless: true),



         ),

    ),


         );

           }

  }
  class SecondRoute extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // Ins mimi code or direct to mimi page
      throw UnimplementedError();
    }
  }