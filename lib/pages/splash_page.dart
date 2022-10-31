import 'dart:async';

import 'package:donations/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerText() => Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: Column(children: [
            Center(
              child: Text(
                'Donations',
                style: logoTextStyle,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/gambar.png',
              height: 300,
            ),
            Center(
              child: Text(
                'Tempat bertemunya\npendonasi barang\ndengan yang membutuhkan',
                style: captionSplashTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        );
    Widget btnSplash() => Container(
          width: double.infinity,
          height: 80,
          margin: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
              color: buttonSplashColor,
              borderRadius: BorderRadius.circular(17)),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            child: Text(
              'MARI KITA MULAI',
              style: logoTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: yellowColor,
      body: Column(
        children: [
          headerText(),
          btnSplash(),
        ],
      ),
    );
  }
}
