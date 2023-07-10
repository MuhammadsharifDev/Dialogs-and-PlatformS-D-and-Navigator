import 'package:flutter/material.dart';

class CustomD extends StatelessWidget {
  const CustomD({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      width: 150,
      child:  Column(
        children: [
          const Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/myself.jpg'),
                radius: 25,
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Text('Bu sahifani yopmoqchimisz?'),
          const SizedBox(
            height:10,
          ),
         Row(
              children: [
                SizedBox(width: 150,),
                TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('No'),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Yes'),
                ),

              ],
            ),

        ],
      ),
    ));
  }
}
