// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intershipapp/jobdis.dart';
import 'package:intershipapp/utilities.dart';
import 'package:intershipapp/screen/MainScreen.dart';
import 'package:intershipapp/screen/Home.dart';
// import 'package:workshala/jobdis.dart';
// import 'package:workshala/utilities.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({super.key});

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const Scaffold(
      // backgroundColor: Color.fromARGB(255, 188, 88, 151),
      backgroundColor: Color.fromARGB(255, 243, 229, 245),
      // body: Padding(
      body:
          // padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          bottomDrawer(),

      // )  ,
      // drawer: Drawer,
    );
  }
}

class bottomDrawer extends StatelessWidget {
  const bottomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(
        height: 25,
      ),
      Container(
          //   child: ElevatedButton(
          // child: const Text('show Drawer'),
          // onPressed: () {
          // showModalBottomSheet<void>(
          // showBottomSheet<void>(
          // context: context,

          // isScrollControlled: true,
          // isDismissible: true,

          // shape: const RoundedRectangleBorder(
          //     borderRadius:
          //         BorderRadius.vertical(top: Radius.circular(40))),
          // builder: (BuildContext context) {
          // return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          height: 648,
          child: Column(
              // children:[Padding(
              // mainAxisAlignment: MainAxisAlignment.center,
              //   // mainAxisSize: MainAxisSize.min,
              //   padding: EdgeInsets.all(1.0),
              children: [
                // const Text('drawer closing button'),
                // MainAxisAlignment
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  height: 20,
                  // width: ,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    // children: [
                    //   // ElevatedButton(
                    //   //   onPressed: () => Navigator.pop(context),
                    //   //   child: const Text(''),
                    //   //   style: const ButtonStyle(
                    //   //     backgroundColor:
                    //   //         MaterialStatePropertyAll<Color>(
                    //   //             Color.fromARGB(198, 240, 231, 231)),
                    //   //   ),
                    //   // ),
                    //   // returnButton(Color.fromARGB(255, 83, 81, 81), 23.0,
                    //   //     23.0, context, const loadingPage()),
                    //   // child:
                    // ],

                    // returnButton(const Color(0xff13b3d7), 23.0, 23.0,
                    //       context, const loadingPage()),
                  ),
                  // child:Row()
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    returnButton(
                        'assets/return.png',
                        const Color.fromARGB(32, 229, 4, 4),
                        28.0,
                        28.0,
                        context,
                        const loadingPage()),
                    const SizedBox(
                      width: 18,
                    ),
                    const Text(
                      'Catogries',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    )
                  ],
                )),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 10, 0),
                    child: Row(
                      children: [
                        Text(
                          'Choose 3-5 catogries and we`ll optimize the \nvacancies for you.',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Inter',
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 464,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                              child: const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SelectableBox(
                                          image: 'assets/crypto (1).png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Crypto'),
                                      SelectableBox(
                                          image: 'assets/bank.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Banking'),
                                    ],
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SelectableBox(
                                          image: 'assets/programming2.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Programming'),
                                      // const SizedBox(
                                      //   width: 0,
                                      // ),
                                      SelectableBox(
                                          image: 'assets/food.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Food & restaurent'),
                                    ],
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SelectableBox(
                                          image: 'assets/human.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Human Reasorce'),
                                      // const SizedBox(
                                      //   width: 20,
                                      // ),
                                      SelectableBox(
                                          image: 'assets/content.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Conten writting'),
                                    ],
                                  ))),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              child: const Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      SelectableBox(
                                          image: 'assets/art.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Art & Design'),
                                      // const SizedBox(
                                      //   width: 20,
                                      // ),
                                      SelectableBox(
                                          image: 'assets/custom.png',
                                          height: 105.0,
                                          width: 120.0,
                                          text: 'Customer Service'),
                                    ],
                                  ))),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 7,
                ),
                // Container(
                //     child: Padding(
                //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //           children: [
                //             const SizedBox(
                //               width: 13,
                //             ),
                //             nextButtonBox(
                //                 'Skip', 141.0, 45.0, context, loadingPage()),
                //             const SizedBox(
                //               width: 20,
                //             ),
                //             nextButtonBox(
                //                 'Next', 141.0, 45.0, context, jobDisPage()),
                //           ],
                //         )))
              ])),
      const SizedBox(height: 20),
      Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 13,
                  ),
                  nextButtonBox('Skip', 141.0, 45.0, context, const Home()),
                  const SizedBox(
                    width: 20,
                  ),
                  nextButtonBox('Next', 141.0, 45.0, context, const Home()),
                ],
              )))
    ]));

    // );

    // ))
    // ]));
  }
}
