import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intershipapp/jobdis.dart';
import 'package:intershipapp/screen/FilterpageScreen.dart';
import 'package:intershipapp/secureStorage.dart';
import 'package:intershipapp/widgets/Buildinkwell.dart';
import 'package:intershipapp/widgets/courseRec.dart';
import 'package:intershipapp/widgets/jobcontainer.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchbar = TextEditingController();

  Map<String, dynamic> userData = new Map();
  final SecureStorage _secureStorage = SecureStorage();

  @override
  void initState() {
    super.initState();
    fetchSecureStorageData();
  }

  Future<void> fetchSecureStorageData() async {
    userData = await _secureStorage.getUserData() ?? {};
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const CircleAvatar(
                        // child: ,
                        backgroundImage:
                            AssetImage('assests/images/profiel.png')),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userData['name'] ?? '',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text(userData['email'] ?? ''),
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
              Container(
                child: GestureDetector(
                    onTap: () {
                      // Navigate to the second screen on tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterScreenPage()),
                      );
                    },
                    child: Row(children: [
                      Spacer(),
                      const Text(
                        'Filter   ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16.0),
                      ),
                      Image.asset(
                        'assets/filter.png',
                        height: 20,
                      ),
                    ])),
              ),
              Image.asset(
                'assests/images/Frame 16.png',
                height: 200,
              ),
              const SizedBox(height: 16.0),
              Container(
                  child: Row(children: [
                const Text(
                  'Recommended Courses',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CrustomBox()));
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.blue),
                    )),
              ])),
              const SizedBox(height: 8.0),
              Container(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    // CourseBox(
                    //     companyLogo: "",
                    //     companyName: "",
                    //     personName: "kjhgfd",
                    //     placeName: "kjhgfd",
                    //     moneyName: "lkjhgfd",
                    //     isOnline: true,
                    //     onFavIconPressed: () {}),
                    // CourseBox(
                    //     companyLogo: "",
                    //     companyName: "",
                    //     personName: "kjhgfd",
                    //     placeName: "kjhgfd",
                    //     moneyName: "lkjhgfd",
                    //     isOnline: true,
                    //     onFavIconPressed: () {})
                    // CrustomBox()
                  ]),
                ),
              ),
              Row(
                children: [
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
                                builder: (context) => CustomBox()));
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(9)),
                    BuildInkwllTo(
                      name: 'All',
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                    BuildInkwllTo(
                      name: 'Design',
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                    BuildInkwllTo(
                      name: 'Technology',
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                    BuildInkwllTo(
                      name: 'AirSpace',
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                    BuildInkwllTo(
                      name: 'Writing',
                    ),
                    Padding(padding: EdgeInsets.all(9)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildtextfiled(BuildContext context, TextEditingController controller,
      String hinttext, bool obscure, VoidCallback onChanged) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [],
      ),
      margin: const EdgeInsets.all(15),
      child: TextField(
        onChanged: (_) {
          onChanged();
        },
        controller: controller,
        obscureText: obscure,
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
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            suffixStyle: const TextStyle(color: Colors.indigo)),
      ),
    );
  }
}
