

import 'package:flutter/material.dart';
TextEditingController fitcontroller = TextEditingController();

Row row1(){

  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('HEIGHT', style: TextStyle(fontSize: 25, color: Colors.green, fontWeight: FontWeight.w500)),
      Container(

        height: 35,
        width: 70,


        child: Align(
          alignment: Alignment.bottomCenter,

          child: TextFormField(
            controller:  fitcontroller,
            style: TextStyle(fontSize: 25, color: Colors.blue),
            maxLength: 1,
            autofocus: true,
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
          child:Text('Feet',style: TextStyle(fontSize: 25, color: Colors.white),)


      ),
    ],
  );
}