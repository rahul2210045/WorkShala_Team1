import 'package:flutter/material.dart';

class CustomBox extends StatefulWidget {
  final String companyLogo;
  final String companyName;
  final String personName;
  final String placeName;
  final String moneyName;

  final bool isOnline;
  final VoidCallback onFavIconPressed;

  CustomBox({
    required this.companyLogo,
    required this.companyName,
    required this.personName,
    required this.placeName,
    required this.moneyName,
    required this.isOnline,
    required this.onFavIconPressed,
  });

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(9),
      height: 230,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(9),
                      // color: Colors.blueGrey
                    ),
                    child: Image.asset(
                      widget.companyLogo,
                      width: 50,
                      height: 50,
                      // Add your image loading placeholders or error widgets here
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Container(
                    child: Column(children: [
                      Text(
                        widget.companyName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.personName,
                        style: TextStyle(fontWeight: null),
                      ),
                    ]),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                        color: isFavorited ? Colors.red : null,
                      ),
                      child: Icon(Icons.favorite_outlined,
                          color: isFavorited ? Colors.white : null),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.isOnline ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          // Text(
          //   'Person: $personName',
          // ),
          Divider(),
          Text(
            widget.placeName,
            style:
                TextStyle(fontWeight: null, fontSize: 20, color: Colors.grey),
          ),
          Text(
            widget.moneyName,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
          ),

          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(148, 108, 195, 1),
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'ONLINE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
