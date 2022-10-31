import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:donations/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 216,
      margin: const EdgeInsets.only(
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: card,
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icon/ic_love.svg',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icon/ic_love.svg',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Center(
            child: Image.asset(
              'assets/images/image 1.png',
              width: 122,
              height: 90,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sepatu Converse',
                style: logoTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
