

import 'package:bmi_app/popupMenuBotton.dart';
import 'package:bmi_app/row1.dart';
import 'package:bmi_app/row2.dart';
import 'package:bmi_app/row3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
       //endDrawer: Drawer(),
     appBar: AppBar(


       title: Row(

         mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
         Row(
           children: [
             Icon(Icons.health_and_safety,size: 30,),

             SizedBox(width: MediaQuery.of(context).size.width *0.01,),
             Text('BMI Calculator', style: TextStyle(fontWeight: FontWeight.bold),),


           ],
         ),

        pop()


       ],
       ),
       backgroundColor: Colors.green,

     ),
       
       body: ListView(
         children: [


          SizedBox(height: MediaQuery.of(context).size.height *0.03,),



          row1(),



           SizedBox(height: MediaQuery.of(context).size.height *0.05,),



          row2(),


           SizedBox(height: MediaQuery.of(context).size.height *0.05,),


           row3(),


           SizedBox(height:  MediaQuery.of(context).size.height *0.03,),


           Center(child: Text(result1.toString(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: col),)
           ),

           SizedBox(height:   MediaQuery.of(context).size.height *0.035,),





           Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Center(

                          child: ElevatedButton(

                            child:

                                Text('CalculatE', style:  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),


                            onPressed: () {

                              var  wt = kgcontroller.text.toString();

                              var ft = fitcontroller.text.toString();
                              var inch = inchcontroller.text.toString();

                              if(wt!='' && ft!='' && inch!='s'){

                                var iwt = int.parse(wt);
                                var ift = int.parse(ft);
                                var iinch = int.parse(inch);


                                var tinch = (ift*12) +iinch;
                                var tcm = tinch*2.54;
                                var tm = tcm/100;
                                var bmi = iwt/(tm*tm);

                                if(bmi<18){
                                  result1 ="BMI is  ${bmi.toStringAsFixed(1)}\nYou are Underweight";
                                  col =Colors.red;

                                }
                              else if(bmi>25){
                                  result1 ="BMI is  ${bmi.toStringAsFixed(1)}\nYou are Overweight";
                                  col =Colors.red;

                                }
                                else{
                                  result1 ="BMI is  ${bmi.toStringAsFixed(1)}\nYou are Normal";
                                  col =Colors.green;

                                }


                                setState(() {

                                });





                              }
                              else{
                                setState(() {
                                   result1 = "Fill all the required fields";
                                   col = Colors.blue;
                                });

                              }
                            }
                          ),
                        ),
             ),




           SizedBox(height: MediaQuery.of(context).size.height *0.05,),
           Padding(
               padding: EdgeInsets.only(left: MediaQuery.of(context).size.height *0.025,),
               child: Text("BMI CLASSIFICATION", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.green)))
,



           Card(


               child: Padding(padding: EdgeInsets.only(
                   top:  MediaQuery.of(context).size.height *0.001,
                   left: MediaQuery.of(context).size.height *0.04,
                   right:  MediaQuery.of(context).size.height *0.04,

               ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Very Severely Underweight', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.red)),
                 Text('<16', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.red))
                 ]),
               ),),

           ),




           Card(


             child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
               left: MediaQuery.of(context).size.height *0.04,
               right:  MediaQuery.of(context).size.height *0.04,
             ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Severely Underweight', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent)),
                       Text('16 - 17', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent))
                     ]),
               ),),

           ),

           Card(


             child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
               left: MediaQuery.of(context).size.height *0.04,
               right:  MediaQuery.of(context).size.height *0.04,
             ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Underweight', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.orangeAccent)),
                       Text('17 - 18', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.orangeAccent))
                     ]),
               ),),

           ),



           Card(


             child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
               left: MediaQuery.of(context).size.height *0.04,
               right:  MediaQuery.of(context).size.height *0.04,
             ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Normal', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.green)),
                       Text('18 - 25', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.green))
                     ]),
               ),),

           ),

           Card(


             child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
               left: MediaQuery.of(context).size.height *0.04,
               right:  MediaQuery.of(context).size.height *0.04,
             ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Overweight', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.orangeAccent)),
                       Text('25 - 30', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.orangeAccent))
                     ]),
               ),),

           ),


         Card(


         child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
           left: MediaQuery.of(context).size.height *0.04,
           right:  MediaQuery.of(context).size.height *0.04,
         ),
    child: Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:[ Text('Obese Class I', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent)),
    Text('30 - 35', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent))
    ]),
    ),),

    ),



           Card(


             child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
               left: MediaQuery.of(context).size.height *0.04,
               right:  MediaQuery.of(context).size.height *0.04,
             ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Obese Class II', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.red)),
                       Text('35 - 40', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.red))
                     ]),
               ),),

           ),


           Card(


             child: Padding(padding: EdgeInsets.only( top:  MediaQuery.of(context).size.height *0.001,
               left: MediaQuery.of(context).size.height *0.04,
               right:  MediaQuery.of(context).size.height *0.04,
             ),
               child: Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[ Text('Obese Class III', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.red)),
                       Text('>40', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.red))
                     ]),
               ),),

           ),

           SizedBox(height: MediaQuery.of(context).size.height * 0.06,)

         ],
       ),


     );

  }
}


var result1 = '';
var col;




