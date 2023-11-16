import 'package:flutter/material.dart';
import 'package:workshala_csi/splash%20screen.dart';

void main() {  body: Container(
        color: Color(0xffC9D8FF),
        child: Center(

            child: Container(

              height: 802,
              width: 396,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(

                      children: [
                        Text('WORK', style: TextStyle(fontSize: 42,color: Color(0xff946CC3)),),
                        Text('SHALA', style: TextStyle(fontSize: 42, color: Color(0xff000000)),),
                      ],
                    ),
                    Text('Welcome', style: TextStyle(fontSize: 24, color: Color(0xff946CC3)),),
                    Image.asset('assets/images/profile icon.png'),
                    Text('What are you looking for?'),
                    Center(
                      child: InkWell(
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Image.asset('assets/images/n.png'),
                              Image.asset('assets/images/p.png'),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          print('Continue');
                        },
                        onDoubleTap:() {
                          print('Continue');
                        },
                        onLongPress:() {
                          print('Continue');
                        } ,
                        child: Container(
                            width: 372,
                            height: 72,
                            decoration: BoxDecoration(
                              color: Color(0xff946CC3),
                              borderRadius: BorderRadius.circular(7),
                            ),
                          child: Center(child: Text('Continue', style: TextStyle( fontSize: 22, color: Color(0xffFFFFFF)),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


                ),




        ),




    );

  }



