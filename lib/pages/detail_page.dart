import 'package:donations/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/product_card.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List images = [
    'assets/images/image_2.png',
    'assets/images/image_2.png',
    'assets/images/image_2.png',
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 35 : 35,
        height: 11,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? yellowColor2 : category,
        ),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icon/ic_back.svg',
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icon/ic_cart.svg',
                  ),
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget carousel() {
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: 376,
                    height: 276,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget nameDescription() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sepatu Converse All Stars',
              style: logoTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Di donasikan Oleh :',
                      style: logoTextStyle.copyWith(
                        color: brown,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mr. Alexander Graham',
                      style: logoTextStyle.copyWith(
                        color: red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icon/ic_love.svg',
                    ),
                    SvgPicture.asset(
                      'assets/icon/ic_phone.svg',
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget recommendationTitle() => Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  'Rekomendasi Barang',
                  style: logoTextStyle.copyWith(
                    fontSize: 14,
                    color: btnHome,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Lihat Semua',
                style: logoTextStyle.copyWith(
                  fontSize: 14,
                  color: title,
                ),
              )
            ],
          ),
        );

    Widget description() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deskripsi Barang',
              style: logoTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              style: otherTextStyle.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget card() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-product');
                  },
                  child: const ProductCard(),
                ),
                const ProductCard(),
                const ProductCard(),
                const ProductCard(),
              ],
            ),
          ),
        );

    Widget btnHubungi() => Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          decoration: BoxDecoration(
              color: yellowColor, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Hubungi',
              style: logoTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
    return Scaffold(
      body: ListView(
        children: [
          header(),
          carousel(),
          nameDescription(),
          description(),
          recommendationTitle(),
          card(),
          btnHubungi(),
        ],
      ),
    );
  }
}
