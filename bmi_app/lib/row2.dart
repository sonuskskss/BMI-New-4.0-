

import 'package:flutter/material.dart';

TextEditingController inchcontroller = TextEditingController();

Row row2(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('HEIGHT', style: TextStyle(fontSize: 25, color: Colors.green, fontWeight: FontWeight.w500)),
      Container(

        height: 35,
        width: 70,


        child: Align(
          alignment: Alignment.bottomCenter,

          child: TextFormField(
            controller: inchcontroller,
            style: TextStyle(fontSize: 25, color: Colors.blue),
            maxLength: 2,
            decoration: InputDecoration(

                counterText: ''
            ),

            keyboardType: TextInputType.number,



          ),

        ),
      ),

      CircleAvatar(
          backgroundColor: Colors.green,

          radius: 30,
          child:Text('Inch',style: TextStyle(fontSize: 25, color: Colors.white),)


      ),
    ],
  );
}