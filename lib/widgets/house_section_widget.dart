import 'package:flutter/material.dart';
import 'package:realestate_ui/pages/house_detail_page.dart';

class HouseSectionWidget extends StatelessWidget {
  const HouseSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HouseDetailPage(),
                  ),
                );
              },
              child: Image(
                image: AssetImage('assets/house1.png'),
                width: 400,
                height: 350,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(),
            Image(
              image: AssetImage('assets/house1.png'),
              width: 400,
              height: 350,
              fit: BoxFit.contain,
            ),
            SizedBox(),
            Image(
              image: AssetImage('assets/house1.png'),
              width: 400,
              height: 350,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
