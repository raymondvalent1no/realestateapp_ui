import 'package:flutter/material.dart';
import 'package:realestate_ui/widgets/house_card_widget.dart';

class PopularSectionWidget extends StatelessWidget {
  const PopularSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See More',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.withOpacity(0.9),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.02),
          HouseCardWidget(
            title: 'Minimalist House',
            address: 'Calf District 101',
            imageCard: 'housecard1.png',
          ),
          SizedBox(height: height * 0.02),
          HouseCardWidget(
            title: 'Futuristic House',
            address: 'Pile Broadway 920',
            imageCard: 'housecard2.png',
          ),
        ],
      ),
    );
  }
}
