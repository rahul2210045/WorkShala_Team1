//

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intershipapp/jobdis.dart';
import 'package:intershipapp/widgets/Buildinkwell.dart';
import 'package:intershipapp/widgets/jobcontainer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchbar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            // Padding(padding: EdgeInsets.only(top: 30)),

            children: [
              Row(
                children: [
                  // Padding(padding: EdgeInsets.only(top: 30)),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://example.com/profile.jpg'),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "geeer",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text('Hello'),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle notification button press
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              buildtextfiled(context, searchbar, "search", false, () {}),
              const SizedBox(height: 16.0),
              Image.asset(
                'assests/images/Frame 16.png',
                // width: double.infinity,
                height: 200,
                // fit: BoxFit.cover,
                // Add your image loading placeholders or error widgets here
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Recommended Courses',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              const SizedBox(height: 8.0),

              // ElevatedButton(
              //   onPressed: () {
              //     // Handle "See All" button press
              //   },
              //   child: Text('See All'),
              // ),
              // SizedBox(width: 900.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  CourseBox(
                      companyLogo: "",
                      companyName: "",
                      personName: "kjhgfd",
                      placeName: "kjhgfd",
                      moneyName: "lkjhgfd",
                      isOnline: true,
                      onFavIconPressed: () {}),
                  CourseBox(
                  companyLogo: "",
                  companyName: "",
                  personName: "kjhgfd",
                  placeName: "kjhgfd",
                  moneyName: "lkjhgfd",
                  isOnline: true,
                  onFavIconPressed: () {})
                ]),
              ),
              // SizedBox(width: 16.0),
              // Container(
              //   height: 150,
              //   width: 150,
              //   color: Colors
              //       .blue, // Placeholder for an image or any other content
              // ),

              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Spacer(),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Recent Jobs',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => jobDisPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.blue),
                      )),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(padding: EdgeInsets.all(9)),
                    BuildInkwllTo(
                      name: 'All',
                    ),
                    Padding(padding: EdgeInsets.all(9)),

                    BuildInkwll(
                      name: 'Design',
                    ),
                    Padding(padding: EdgeInsets.all(9)),

                    BuildInkwll(
                      name: 'Technology',
                    ),
                    Padding(padding: EdgeInsets.all(9)),

                    BuildInkwll(
                      name: 'AirSpace',
                    ),
                    Padding(padding: EdgeInsets.all(9)),

                    BuildInkwll(
                      name: 'Writing',
                    ),
                    Padding(padding: EdgeInsets.all(9)),

                    // BuildInkwll(
                    //   name: 'All',
                    // ),
                    // BuildInkwll(
                    //   name: 'All',
                    // ),
                    // BuildInkwll(
                    //   name: 'All',
                    // )
                  ],
                ),
              ),
              // SingleChildScrollView(
              //     scrollDirection: Axis.vertical,
              //     child: Column(children: [
              //       // CustomBox(),
              //     ]))
            ],
          ),
        ),
      ),
    );
  }

//   Widget buildinkwell(
//     BuildContext context,
//   ) {
//     bool isPressed = false;
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isPressed = !isPressed;
//         });
//       },
//       child: Container(
//         padding: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: isPressed ? Colors.purple : Colors.transparent,
//           borderRadius: BorderRadius.circular(8.0),
//           border: Border.all(color: Colors.purple),
//         ),
//         child: Text(
//           'Click me',
//           style: TextStyle(
//             color: isPressed ? Colors.white : Colors.purple,
//           ),
//         ),
//       ),
//     );
//   }
// }

  Widget buildtextfiled(BuildContext context, TextEditingController controller,
      String hinttext, bool obscure, VoidCallback onChanged) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          // BoxShadow(
          //   color: Colors.grey.withOpacity(0.5),
          //   spreadRadius: 2,
          //   blurRadius: 5,
          //   offset: const Offset(0, 3),
          // ),
        ],
      ),
      margin: const EdgeInsets.all(15),
      child: TextField(
        onChanged: (_) {
          onChanged();
        },
        controller: controller,
        obscureText: obscure,
        // enabled: false,
        style: const TextStyle(color: Colors.black),

        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.keyboard_option_key_sharp),
            fillColor: const Color.fromRGBO(148, 108, 195, 0.1),
            filled: true,
            hintText: hinttext,
            hintStyle: const TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              // borderSide: const BorderSide(color: Colors.blue),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            suffixStyle: const TextStyle(color: Colors.indigo)),
      ),
    );
  }
}
