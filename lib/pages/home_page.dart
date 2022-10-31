import 'package:donations/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:donations/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    'assets/images/carousel.png',
    'assets/images/carousel.png',
    'assets/images/carousel.png',
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 58,
                      height: 58,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/gambar.png',
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hai,',
                            style: logoTextStyle.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            )),
                        Text(
                          'Alexander',
                          style: logoTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/icon/ic_cart.svg',
              )
            ],
          ),
        );

    Widget searchPage() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: search,
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/ic_search.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: "Cari alamat atau barang",
                    hintStyle: logoTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          )),
        );

    Widget categories() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_baju.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_buku.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_motor.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_sepatu.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_laptop.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_lemari.svg',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: category,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icon/ic_lemari.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

    Widget carousel() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 169,
            width: double.infinity,
            child: CarouselSlider(
              items: images
                  .map(
                    (image) => Image.asset(
                      image,
                      width: 358,
                      height: 164,
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
          ),
        ],
      );
    }

    Widget LocationTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
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
                  'Terdekat Di Lokasi Mu',
                  style: logoTextStyle.copyWith(
                    fontSize: 16,
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

    Widget newProductTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
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
                  'Barang Terbaru',
                  style: logoTextStyle.copyWith(
                    fontSize: 16,
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

    return ListView(
      children: [
        header(),
        searchPage(),
        categories(),
        carousel(),
        LocationTitle(),
        card(),
        newProductTitle(),
        card(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
