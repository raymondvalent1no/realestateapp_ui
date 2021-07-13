import 'package:flutter/material.dart';

import 'package:realestate_ui/widgets/header_section_widget.dart';
import 'package:realestate_ui/widgets/house_section_widget.dart';
import 'package:realestate_ui/widgets/popular_section_widget.dart';
import 'package:realestate_ui/widgets/search_section_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F8F8),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.085, vertical: height * 0.0125),
          width: double.infinity,
          height: height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                HeaderWidget(),
                SizedBox(height: height * 0.02),
                SearchWidget(),
                SizedBox(height: height * 0.02),
                HouseSectionWidget(),
                SizedBox(height: height * 0.02),
                PopularSectionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
