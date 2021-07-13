import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.04,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffDDDBDA),
              borderRadius: BorderRadius.circular(15),
            ),
            width: width * 0.7,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  IconButton(
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    iconSize: 15,
                  ),
                  Text(
                    'Search Classic Style',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: Icon(Icons.mic_none),
                    iconSize: 15,
                    color: Color(0xffFBA651),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('assets/filter_search_icon.png'),
                      height: 23,
                      width: 23,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
