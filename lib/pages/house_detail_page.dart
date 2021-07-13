import 'package:flutter/material.dart';
import 'package:realestate_ui/pages/chat_page.dart';
import 'package:realestate_ui/pages/favorite_page.dart';
import 'package:realestate_ui/pages/home_page.dart';
import 'package:realestate_ui/pages/profile_page.dart';

class HouseDetailPage extends StatefulWidget {
  HouseDetailPage({Key? key}) : super(key: key);

  @override
  _HouseDetailPageState createState() => _HouseDetailPageState();
}

class _HouseDetailPageState extends State<HouseDetailPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F8F8),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: height * 0.015),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Container(
                  height: height * 0.04,
                  width: double.infinity,
                  child: Row(
                    children: [
                      IconButton(
                        hoverColor: Colors.transparent,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 22,
                      ),
                      Spacer(),
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        hoverColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz),
                        iconSize: 22,
                      ),
                      Divider(),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    image: AssetImage('assets/housedetail.png'),
                    width: 450,
                    height: 390,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'American Classic',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    hoverColor: Colors.transparent,
                                    onPressed: () {},
                                    icon: Icon(Icons.location_on),
                                    iconSize: 15,
                                    color: Color(0xffFBA651),
                                  ),
                                  Text(
                                    'Highway District 201',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.withOpacity(0.9),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            iconSize: 18,
                          ),
                        ],
                      ),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text:
                                'American classic house, this house has always been a target for property companies because of its ancient style but very attractive ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'Read More',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffFBA651),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage(
                                'assets/houseoverview1.png',
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Image(
                              image: AssetImage(
                                'assets/houseoverview2.png',
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Image(
                              image: AssetImage(
                                'assets/houseoverview3.png',
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Image(
                              image: AssetImage(
                                'assets/houseoverview4.png',
                              ),
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Image(
                              image: AssetImage(
                                'assets/houseoverview_more.png',
                              ),
                              height: 50,
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.025),
                Container(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '\$ 300K',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'Buy',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
