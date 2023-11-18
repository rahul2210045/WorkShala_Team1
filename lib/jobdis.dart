import 'package:flutter/material.dart';
import 'package:intershipapp/screen/Home.dart';
import 'package:intershipapp/uploadScreen.dart';
import 'package:intershipapp/utilities.dart';
// import 'package:workshala/loadingpage.dart';
// import 'package:workshala/utilities.dart';

class jobDisPage extends StatefulWidget {
  const jobDisPage({super.key});

  @override
  State<jobDisPage> createState() => _jobDisPageState();
}

class _jobDisPageState extends State<jobDisPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: jobDisDetail(),
    );
  }
}

class jobDisDetail extends StatelessWidget {
  const jobDisDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 30,
            ),
            returnButton(
                'assets/vectornormal.png',
                const Color.fromARGB(34, 104, 104, 104),
                26.0,
                26.0,
                context,
                 Home()),
            const SizedBox(
              width: 115,
            ),
            // const Text(
            //   'Details',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 28,
            //       color: Color.fromARGB(255, 0, 0, 0)),
            // ),
            const SizedBox(width: 150),
            returnButton1(
                'assets/share.png',
                const Color.fromARGB(34, 104, 104, 104),
                28.0,
                28.0,
                context,
                const jobDisPage()),
          ],
        )),
        // Container(
        //     child: Padding(
        //         padding: const EdgeInsets.fromLTRB(0, 25, 15, 0),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             const SizedBox(
        //               width: 16,
        //             ),
        //             showBox('assets/details.png', 118.0, 134.0,
        //                 'Interaction Designer', 'Dribbble'),
        //             textBox(30.0, 350.0, 250.0, 'Salary', '-'),
        //             textBox(30.0, 350.0, 220.0, 'Type', 'Part-Time'),
        //             textBox(30.0, 350.0, 220.0, 'Location', 'WFH'),
        //             textBox(30.0, 350.0, 200.0, 'Duration', '3 Months'),
        //             Container(
        //                 decoration: BoxDecoration(
        //                     // borderRadius: BorderRadius.circular(20),
        //                     border: Border.all(
        //               color: const Color.fromARGB(151, 12, 12, 12),
        //               width: 1,
        //             ))),
        Container(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 14, 13, 0),
                child: Column(children: [
                  jobDisBoxUi(
                      'assets/google1.png',
                      332.0,
                      340.0,
                      'UI/UX Designer',
                      'Google LLC',
                      'California, United States',
                      '\$10,000-\$25,000/month',
                      'Full Time',
                      'Onsite',
                      'Posted 10 Days ago, ends in 25 Dec.'),

                  // SizedBox(
                  //   height: 9,
                  // ),
                  // Text(
                  //   "About Dribble                                                     ",
                  //   style: TextStyle(
                  //       fontSize: 20, fontWeight: FontWeight.w800),
                  // ),
                  // SizedBox(
                  //   height: 7,
                  // ),
                  // Text(
                  //   "About All Trails\n\nAllTrails is the most trusted and used outdoors platform\nin the world. \nWe help people explore the outdoors with hand-curated\ntrail maps along with photos, reviews, and user \nrecordings crowdsourced from our community of \nmillions of registered hikers, mountain bikers and trail \nrunners in 150 countries. AllTrails is frequently ranked\nas a top-5 Health and Fitness app and has been\ndownloaded by over 40 million people worldwide.\n",
                  //   style: TextStyle(
                  //       fontSize: 14, fontWeight: FontWeight.w500),
                  // ),
                  // Text(
                  //   "If you like leaning into qualitative and quantitative data to inform your design decisions then this could be the perfect opportunity for you. Come join our mission to help people spend more time outside having healthy, authentic experiences and a deeper appreciation of the outdoors!\n",
                  //   style: TextStyle(
                  //       fontSize: 14, fontWeight: FontWeight.w500),
                  // ),
                ]))),
        Container(
            child: Padding(
                padding: EdgeInsets.fromLTRB(12, 14, 13, 0),
                child: TextColorChangeWithLine()
                //     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //   // Container(
                //   // mainAxisAlignment :MainAxisAlignment.center,
                //   Text(
                //     "Job Description      ",
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //         fontFamily: 'Poppins',
                //         color: Color(0xFF0A66C2)),
                //   ),
                //   Text(
                //     "Minimum Qualification",
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //         fontFamily: 'Poppins',
                //         color: Colors.black),
                //   ),
                )),
        SizedBox(
            height: 210,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 14, 13, 0),
                child: SingleChildScrollView(
                    // child: ConstrainedBox(
                    //     constraints: BoxConstraints(
                    // minHeight: viewportConstraints.maxHeight,
                    // ),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      const Text(
                        'Job Description:',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      // content_JobDis(context),
                      // GridView.count(
                      //     crossAxisCount: 2,
                      //     mainAxisSpacing: 2.0,
                      //     childAspectRatio: 5.0,
                      //     children: <Widget>[
                      //       Container(
                      //         width: 5,
                      //         height: 5,
                      //         decoration: const ShapeDecoration(
                      //           color: Color(0xFFD9D9D9),
                      //           shape: OvalBorder(),
                      //         ),
                      //       ),
                      const SizedBox(
                        height: 7,
                      ),

                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 18,
                      ),

                      const Text(
                        'Minimum Qualification:',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      // content_JobDis(context),
                      // GridView.count(
                      //     crossAxisCount: 2,
                      //     mainAxisSpacing: 2.0,
                      //     childAspectRatio: 5.0,
                      //     children: <Widget>[
                      //       Container(
                      //         width: 5,
                      //         height: 5,
                      //         decoration: const ShapeDecoration(
                      //           color: Color(0xFFD9D9D9),
                      //           shape: OvalBorder(),
                      //         ),
                      //       ),
                      const SizedBox(
                        height: 16,
                      ),

                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                          child: Row(children: [
                        // Padding(padding: const EdgeInsets.all(8),
                        // color: Colors.teal[200],
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 5,
                          height: 5,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Able to run design sprint to deliver the best user\nexperience based on research.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 17,
                      ),
                      const Text(
                        'Perks and Benefits:',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      const SizedBox(height: 17),
                      const Text(
                        'Required Skills:',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      SizedBox(
                          width: 300,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 14, 13, 0),
                              child: SingleChildScrollView(
                                  // child: ConstrainedBox(
                                  //     constraints: BoxConstraints(
                                  // minHeight: viewportConstraints.maxHeight,
                                  scrollDirection: Axis.horizontal,
                                  // ),
                                  child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        requiredBox(
                                            173.16, 31.0, 'Creative Thinking'),
                                        requiredBox(97.16, 31.0, 'Figma'),
                                        requiredBox(
                                            173.16, 31.0, 'Creative Thinking'),
                                        requiredBox(97.16, 31.0, 'Figma'),
                                      ])))),
                      const SizedBox(height: 22),
                      const Text(
                        'About:',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        'Google LLC is an American multinational technology company that focuses on search engine technology, online advertising, cloud computing.. computer software, quantum computing. e- commerce, artificial intelligence, and consumer electronics',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      //       // Container(
                      //       //   padding: const EdgeInsets.all(8),
                      //       //   color: Colors.teal[300],
                      //       //   child: const Text(
                      //       //       'Sound of screams but the'),
                      //       // ),
                      //       // Container(
                      //       //   padding: const EdgeInsets.all(8),
                      //       //   color: Colors.teal[400],
                      //       //   child: const Text('Who scream'),
                      //       // ),
                      //     ])
                    ])))),
        SizedBox(
          height: 40.0,
        ),
        applyButtonBox('Apply', 320.0, 45.0, context, const uploadPage()),
      ],
    ));
  }
}
