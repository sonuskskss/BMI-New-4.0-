




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wiredash/wiredash.dart';

import 'Follow_Dialog.dart';

PopupMenuButton pop(){

  return  PopupMenuButton(
    color: Colors.green,
    icon: Icon(Icons.more_vert, color: Colors.white,),
    itemBuilder: ( context)=> [
      PopupMenuItem(
          child: InkWell(

            onTap: ()=>Get.back(),
            child: Text('Remove Ads', style:  TextStyle(fontSize: 20, color: Colors.white),),
          )
      ),

      PopupMenuItem(
          child: InkWell(

            onTap: (){

              Get.back();
              Wiredash.of(context).show();
            },
            child: Text('Send feedback', style:  TextStyle(fontSize: 20, color: Colors.white),),
          )
      ),


      PopupMenuItem(
          child: InkWell(

            onTap: (){
              Get.back();
              FollowDialog();
            },
            child: Text('Follow Us', style:  TextStyle(fontSize: 20, color: Colors.white),),
          )
      ),



      PopupMenuItem(
          child: InkWell(

            onTap: ()async{
              Get.back();
              final urlPreview = 'https://play.google.com/store/apps/details?id=com.dkdkdipakrajputbmiapp';
              await Share.share(urlPreview);

            },
            child: Text('Invite friends to the app', style:  TextStyle(fontSize: 20, color: Colors.white),),
          )
      ),



    ],);
}