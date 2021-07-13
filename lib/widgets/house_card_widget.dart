import 'package:flutter/material.dart';

class HouseCardWidget extends StatelessWidget {
  const HouseCardWidget(
      {Key? key,
      required this.imageCard,
      required this.title,
      required this.address})
      : super(key: key);

  final String imageCard;
  final String title;
  final String address;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image(
              image: AssetImage(imageCard),
              height: 75,
              width: 75,
            ),
          ),
          SizedBox(width: width * 0.1),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                address,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            iconSize: 18,
          ),
        ],
      ),
    );
  }
}
