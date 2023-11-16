
import 'package:flutter/material.dart';
TextEditingController kgcontroller = TextEditingController();

Row row3(){

  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('WEIGHT', style: TextStyle(fontSize: 25, color: Colors.green, fontWeight: FontWeight.w500)),
      Container(

        height: 35,
        width: 70,


        child: Align(
          alignment: Alignment.bottomCenter,

          child: TextFormField(
            controller: kgcontroller,
            style: TextStyle(fontSize: 25, color: Colors.blue),
            maxLength: 3,
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

          child:Text('Kg',style: TextStyle(fontSize: 25, color: Colors.white),)


      ),
    ],
  );
}