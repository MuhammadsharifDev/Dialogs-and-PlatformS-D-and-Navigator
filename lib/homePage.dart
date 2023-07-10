import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw_modul2_2/Aliert%20Dialog.dart';
import 'package:hw_modul2_2/ButtomSheet.dart';
import 'package:hw_modul2_2/Cupertino%20alert%20dialog.dart';
import 'package:hw_modul2_2/Custom%20Dialog.dart';
import 'package:hw_modul2_2/Platform%20Dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homeworks'),
      ),
      body:  Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,40),
              ),
                onPressed:() {
                 showDialog(context: context, builder: (ctx){
                   return AlertDialog(
                     title: Text('Alert Dialog title'),
                     content: Text('Alert style'),
                     actions: <Widget>[
                       TextButton(
                         onPressed: (){
                           Navigator.pop(context);
                         },
                         child:Text('Close'),),
                       TextButton(
                         onPressed: (){
                           Navigator.pop(context);
                         },
                         child: Text('Yes'),),
                     ],
                   );
                 });
                }, child: Text('Android Alert Dialog'),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,40),
              ),
              onPressed:() {
                showDialog(context: context, builder: (ctx){
                  return CupertinoAlertDialog(
                    title: Text('Cupertino Alert Dialog'),
                    content: Text('Cupertino descripe'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('Close'),
                      ),
                      TextButton(onPressed: (){

                      }, child: Text('Yes'),
                      ),
                    ],
                  );
                });
              }, child: Text('Cupertino Aligert Dialog'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,40),
              ),
              onPressed:() {
                   showDialog(context: context, builder: (ctx){
                     return PlatformDialog();
                   });
              }, child: Text('check Platform class'),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,40),
              ),
              onPressed:() {
                showModalBottomSheet(context: context, builder:(BuildContext context){
                  return ButtomSheet();
                });
              }, child: Text('Butoom sheet'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,40),
              ),
              onPressed:() {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Row(
                      children: [
                          Expanded(child: Text('This is SnackBar')),
                        Text('Undo',style: TextStyle(color: Colors.blue),),
                      ],
                    ),
                    ),
                );
              }, child: Text('Snack Bar'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(10,40),
              ),
              onPressed:(){
                showDialog(context: context,
                    builder: (BuildContext context){
                      return CustomD();
                    }
                );
              }, child: Text('Custom Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
