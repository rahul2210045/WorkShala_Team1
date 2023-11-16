import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
        Container(
          height: 917,
          width: 414,
          color: Colors.white,

          child: Column(
            children: [
              Container(
                height:226 ,
                width: 336,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                    Row(
                     children: [
                       Image.asset('assest/Images/profile icon.png'),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text('Vidita Singh', style: TextStyle( color: Color(0xff946CC3),fontSize: 33),),
                           Text('India', style: TextStyle( color: Color(0xff454545),fontSize: 23),),
                           Text('Since 2022', style: TextStyle( color: Color(0xff454545),fontSize: 20),),

                         ],
                       )
                     ],
                   ),
                   Row(
                     children: [
                       ElevatedButton(onPressed: (){},

                           child: Image.asset('assest/Images/Group 33179.png')),
                       ElevatedButton(onPressed: (){},

                           child: Image.asset('assest/Images/Group 33178.png'))
                     ],
                   )

                 ],
               ),

              ),
              Container(
                child: Row(
                  children: [
                    Container(

                    )
                  ],
                ),
              ),

              ListView(
                children: [
                  Row(

                  )
                ],
              ),

            ],
          ),
        )


    );
  }
}