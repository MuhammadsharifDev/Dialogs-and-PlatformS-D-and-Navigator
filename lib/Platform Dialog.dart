import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformDialog extends StatelessWidget {
  const PlatformDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Dialog'),
        leading: Icon(Icons.account_circle_outlined),
      ),
      body:Center(
        child: ElevatedButton(
         onPressed: (){

           _showDialog(context);
         },
          child: Text('Click'),
        ),
      ),
    );
  }
  void _showDialog(BuildContext context){
    if(Platform.isAndroid){
      showDialog(context: context, builder:(context)=>
        AlertDialog(
          title: Text('This is Alert Dialog'),
          content: Text('Are your sure what this delete'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Close')),
          ],
        ),

      );
    }else if(Platform.isIOS){
      showCupertinoDialog(context: context, builder:(context)=>
        CupertinoAlertDialog(
          title: Text('Cupertino Dialog'),
          content: Text('Are you sure What it delete'),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Delete')),
          ],
        ),
      );
    }
  }
}

