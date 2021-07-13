import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.04,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            hoverColor: Colors.transparent,
            onPressed: () {},
            icon: Icon(Icons.sort_outlined),
            iconSize: 22,
          ),
          Spacer(),
          IconButton(
            hoverColor: Colors.transparent,
            onPressed: () {},
            icon: Icon(Icons.location_on),
            iconSize: 15,
            color: Color(0xffFBA651),
          ),
          Text(
            'California, US',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          IconButton(
            hoverColor: Colors.transparent,
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            iconSize: 22,
          ),
          Divider(),
        ],
      ),
    );
  }
}
